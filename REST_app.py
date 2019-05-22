# Импортирование библиотек Flask, SQLAlchemy и вспомогательных.
from flask import Flask, render_template
from flask import request
from sqlalchemy import create_engine
from flask_jsonpify import jsonify

'''Подключение MySQL базы данных my_books при помощи pymysql и SQLAlchemy.'''
db_connect = create_engine("mysql+pymysql://vitalii:tutevych@localhost/my_books")
conn = db_connect.connect()

'''Создание Flask - приложения.'''
app = Flask(__name__)


@app.route("/")
def index():
    """ Ссылка, отвечающая за главную страницу. """
    return render_template('index.html')


@app.route("/books", methods=["GET", "POST", "DELETE"])
def books():
    """Ссылка /books привязана к одноименному методу, который обрабатывает
                                GET, POST, DELETE запросы."""
    params = request.args   # Получение парасетров запроса.
    if params and request.method == 'GET':
        return books_key(params)
    elif params and request.method == 'POST':
        return add_book(params)
    elif params and request.method == 'DELETE':
        return delete_books(params)
    else:
        # По умолчанию: если запрос передан без параметров, получить все книги с базы данных.
        query = conn.execute("select id, Author, Name from read_books")
        params = ("Id", "Author", "Book")
        books_authors = [dict(zip(params, i)) for i in query.cursor.fetchall()]
        return jsonify(books_authors)


def books_key(keys):
    """Даная функция обрабатывает GET-запрос получения книг по 3 возможным параметрам:
    Автор, Название книги и ID, в противном случае возвращает None."""
    query = conn.execute("select id, Author, Name from read_books")
    params = ("Id", "Author", "Book")
    if "author" in keys:  # Если параметр поиска - автор.
        result_response = jsonify([dict(zip(params, obj)) for obj in query.cursor.fetchall() if obj[1] == keys.get("author")])
    elif "book" in keys:  # Если параметр поиска - название книги.
        result_response = jsonify([dict(zip(params, obj)) for obj in query.cursor.fetchall() if obj[2] == keys.get("book")])
    elif "id" in keys:  # Если параетр поиска - ID.
        result_response = jsonify([dict(zip(params, obj)) for obj in query.cursor.fetchall() if obj[0] == int(keys.get("id"))])
    else:
        # Принимает значение None при неизвестном параметре поиска.
        result_response = None

    return result_response


def add_book(keys):
    """Даная функция обрабатывает POST-запрос добавления книг в базу данных, если такие там
        не имеются.
        Принимает 2 обязательных параметра: Автор, Название книги"""
    if len(conn.execute("select name from read_books where name = '{book}'".format(**keys)).cursor.fetchall()) == 0:
        conn.execute("insert into `read_books`(name, author)  values('{book}', '{author}')".format(**keys))
        return 'Added successfully!', 200
    else:
        return 'Bad request!', 400


def delete_books(keys):
    """Даная функция обрабатывает DELETE-запрос удаления книги из базы данных, по заданым параметрам.
        Может принимать следующие параметры: Автор, Название книги.
    """
    if "author" in keys and "book" not in keys:
        conn.execute("delete from `read_books` where author = '{author}'".format(**keys))
        return "Deleted successfully!", 200
    elif "book" in keys:
        conn.execute("delete from `read_books` where name = '{book}'".format(**keys))
        return "Deleted successfully!", 200
    else:
        return "Bad request!", 400


if __name__ == '__main__':
    app.run(debug=True)  # Непосредственный запуск приложения.
