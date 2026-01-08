# Python 3.9 use karein
FROM python:3.9-slim

# 1. System packages install karein (Updated for modern Linux)
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    unzip \
    && mkdir -p /usr/share/keyrings \
    && wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/googlechrome-linux-keyring.gpg \
    && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/googlechrome-linux-keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | tee /etc/apt/sources.list.d/google-chrome.list \
    && apt-get update \
    && apt-get install -y google-chrome-stable \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 2. Working directory set karein
WORKDIR /app

# 3. Requirements file copy karein
COPY requirements.txt .

# 4. Saari libraries install karein
RUN pip install --no-cache-dir -r requirements.txt

# 5. Baaki saara code copy karein
COPY . .

# 6. Render ka port expose karein
EXPOSE 10000

# 7. Chrome Environment variables
ENV CHROME_BIN=/usr/bin/google-chrome
ENV CHROMEDRIVER_PATH=/usr/bin/chromedriver

# 8. Server Start Command
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:10000", "--timeout", "120"]