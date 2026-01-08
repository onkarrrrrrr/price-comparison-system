# PriceScraper Pro 🛍️

An enterprise-grade price comparison web application that scrapes product information from major e-commerce platforms including Flipkart, Amazon, Croma, and Snapdeal.

## ✨ Features

- **Multi-Platform Scraping**: Compare prices across 4+ major e-commerce websites
- **Intelligent Product Matching**: Smart algorithms to group similar products
- **Price History Tracking**: Monitor price changes over time
- **Wishlist Management**: Save products and set price alerts
- **OCR Image Search**: Upload product images to extract product names
- **AI-Powered Chat**: Get personalized product recommendations (optional)
- **User Authentication**: Secure login/registration system
- **Analytics Dashboard**: Track your savings and search history

## 🛠️ Technology Stack

- **Backend**: Flask (Python)
- **Database**: SQLAlchemy with SQLite
- **Web Scraping**: Selenium WebDriver with Chrome
- **Authentication**: Flask-Login
- **Frontend**: Bootstrap 5, HTML5, JavaScript
- **OCR**: Tesseract via pytesseract
- **AI Integration**: Google Generative AI (optional)

## 🚀 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Anupam1707/Infosys-Demo-Project.git
   cd Infosys-Demo-Project
   ```

2. **Install Python dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Install Chrome/Chromium browser**
   - The application requires Chrome browser for web scraping
   - ChromeDriver will be automatically managed by webdriver-manager

4. **Set up environment variables**
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

5. **Run the application**
   ```bash
   python app.py
   ```

6. **Access the application**
   - Open http://localhost:5000 in your browser
   - Create an account or login to start using the platform

## 🔧 Configuration

### Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `SECRET_KEY` | Flask secret key for sessions | `dev-key-change-in-production` |
| `DATABASE_URL` | Database connection string | `sqlite:///db.sqlite` |
| `GOOGLE_API_KEY` | Google AI API key (optional) | None |
| `FLASK_ENV` | Environment (development/production) | `development` |
| `FLASK_DEBUG` | Enable debug mode | `true` |
| `PORT` | Port to run the application | `5000` |

### Security Features

- **CSRF Protection**: Secure forms against cross-site request forgery
- **Security Headers**: X-Frame-Options, XSS Protection, Content-Type Options
- **Session Security**: HTTPOnly, Secure, SameSite cookie attributes
- **Input Validation**: Sanitization of user inputs
- **Password Hashing**: Secure password storage with PBKDF2

## 📊 Supported Platforms

| Platform | Status | Features |
|----------|--------|----------|
| Flipkart | ✅ Active | Product search, price extraction, images |
| Amazon IN | ✅ Active | Product search, price extraction, images |
| Croma | ✅ Active | Electronics focus, price comparison |
| Snapdeal | ✅ Active | General products, competitive pricing |

## 🎯 Usage

### Basic Search
1. Login to your account
2. Enter a product name in the search bar
3. View results from all supported platforms
4. Compare prices and add items to wishlist

### Advanced Features
- **Price Alerts**: Set target prices for wishlist items
- **Image Search**: Upload product images for OCR-based search
- **Analytics**: View your search history and savings
- **AI Chat**: Get product recommendations (requires Google API key)

## 🔧 Development

### Project Structure
```
├── app.py                 # Main Flask application
├── requirements.txt       # Python dependencies
├── .env.example          # Environment variables template
├── scraper/              # Web scraping modules
│   ├── base_scraper.py   # Base scraper class
│   ├── amazon_scraper.py # Amazon-specific scraper
│   ├── flipkart_scraper.py # Flipkart-specific scraper
│   ├── croma_scraper.py  # Croma-specific scraper
│   ├── snapdeal_scraper.py # Snapdeal-specific scraper
│   └── scraper_manager.py # Multi-platform manager
├── utils/                # Utility modules
│   ├── currency_converter.py # Currency conversion
│   └── product_matcher.py    # Product matching algorithms
├── templates/            # HTML templates
├── static/               # CSS, JS, images
└── instance/             # Database files
```

### Code Quality
- **Linting**: Code follows PEP8 standards
- **Error Handling**: Comprehensive exception handling
- **Security**: Input validation and sanitization
- **Documentation**: Inline comments and docstrings

## 🐛 Troubleshooting

### Common Issues

1. **Chrome/ChromeDriver Issues**
   - Ensure Chrome browser is installed
   - webdriver-manager will handle ChromeDriver automatically
   - For headless mode issues, check display settings

2. **Scraping Failures**
   - Some sites may block automated requests
   - The app includes anti-detection measures
   - Check internet connection and site availability

3. **Database Issues**
   - Delete `instance/db.sqlite` to reset database
   - Check file permissions for database directory

4. **OCR Issues**
   - Install Tesseract OCR engine for your OS
   - Ensure pytesseract can find the Tesseract binary

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## ⚠️ Disclaimer

This application is for educational and personal use only. Please respect the terms of service of the websites being scraped. The developers are not responsible for any misuse of this application.

## 📞 Support

For support and questions:
- 📧 Email: support@pricescraper.com
- 🐛 Issues: [GitHub Issues](https://github.com/Anupam1707/Infosys-Demo-Project/issues)
- 📖 Documentation: [Wiki](https://github.com/Anupam1707/Infosys-Demo-Project/wiki)

---

**Made with ❤️ for Infosys Springboard Internship**