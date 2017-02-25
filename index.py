import web

urls = (
  '/', 'index'
)
from web.contrib.template import render_jinja

render = render_jinja(
        'templates',   # Set template directory.
        encoding = 'utf-8',                         # Encoding.
    )

class index:
    def GET(self):
        return render.index()


if __name__ == "__main__": 
    app = web.application(urls, globals())
    app.run() 
