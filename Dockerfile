# Python 3.9 image use karein
FROM python:3.9-slim

# 1. System updates aur Google Chrome install karein
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    unzip \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
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

# 6. Render ka default port expose karein
EXPOSE 10000

# 7. Chrome Environment variables set karein (Crash se bachne ke liye)
ENV CHROME_BIN=/usr/bin/google-chrome
ENV CHROMEDRIVER_PATH=/usr/bin/chromedriver

# 8. Server Start Command (Gunicorn use karke)
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:10000", "--timeout", "120"]