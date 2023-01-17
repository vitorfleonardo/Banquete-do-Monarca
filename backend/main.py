from flask import Flask, jsonify, make_response, request, render_template

app = Flask(__name__)

@app.route('/login')
def get_cpf():
    return render_template('main.dart')

@app.route('/storytelling')
def storytelling():
    return "<h1>Pedidos</h1>"

@app.route('/home')
def get_order():
    return jsonify({"Hello":"World"})

@app.route('/cardapio')
def choose():
    return "<h1>Pedidos</h1>"

@app.route('/bebidas')
def get_drinks():
    return jsonify({"Hello":"World"})

@app.route('/mercado')
def change_patacas():
    return "<h1>Pedidos</h1>"

if __name__ == "__main__":
    app.run(debug=True)
