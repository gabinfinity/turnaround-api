FROM python:3

# Install dependencies:
WORKDIR /cfsolver

# Copie o arquivo de requisitos para o contêiner
COPY requirements.txt .
    
# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt
    
# Copie o restante da aplicação para o contêiner
COPY . .
RUN playwright install
RUN playwright install-deps
# Run the application:
CMD ["python", "main.py"]
