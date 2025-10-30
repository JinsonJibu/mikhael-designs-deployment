# app/app.py content
from flask import Flask, render_template

# _name_ is a special Python variable that gets the name of the current module.
# Flask uses it to know where to look for templates and static files.
app = Flask(__name__)

# --- Routes (URLs) for your website ---

@app.route('/')
def home():
    """Renders the main landing page for Mikhael Designs."""
    return render_template('index.html', title='Mikhael Designs - Home')

@app.route('/portfolio')
def portfolio():
    """Renders the portfolio/products page."""
    # Dummy data for the portfolio (you can replace this with a database later)
    design_items = [
        {"name": "Modern Interior", "price": "1500", "description": "Sleek and minimalist design concept."},
        {"name": "Abstract Art Wall", "price": "800", "description": "Custom wall art and installations."},
        {"name": "Architectural Drafting", "price": "2500", "description": "Full-scale drafting and blueprints."},
    ]
    return render_template('portfolio.html', items=design_items, title='Our Portfolio')

@app.route('/contact')
def contact():
    """Renders the contact/cart page."""
    return render_template('contact.html', title='Contact Us')


# --- Run the application ---
if __name__ == '__main__':
    # When running on Azure, the host '0.0.0.0' allows connections from all IPs, 
    # and the standard port for web apps in containers is 5000.
    app.run(host='0.0.0.0', port=5000)