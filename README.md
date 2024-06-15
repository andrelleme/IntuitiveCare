# Projeto IntuitiveCare

![Python](https://img.shields.io/badge/Python-3.8%2B-blue)
![Node.js](https://img.shields.io/badge/Node.js-14.x-green)

## Visão Geral

Este projeto contém três testes relacionados à web scraping, conversão de PDF para CSV e manipulação de banco de dados.

## Funcionalidades

- **Web Scraping com Node.js e Puppeteer**: Utiliza Node.js com a biblioteca Puppeteer para automatizar a navegação e a coleta de dados de websites, incluindo o download de um PDF específico requerido.
- **Conversão de PDF para CSV usando Regex**: Extrai partes específicas de um PDF usando expressões regulares (regex) e converte o conteúdo para o formato CSV.
- **Banco de Dados**: Manipulação e gestão de dados em um banco de dados, incluindo operações de inserção, consulta e atualização.

## Instalação

1. **Clone o repositório**:
    ```bash
    git clone https://github.com/andrelleme/IntuitiveCare.git
    cd IntuitiveCare
    ```

2. **Crie um ambiente virtual**:
    ```bash
    python -m venv venv
    source venv/bin/activate   # No Windows, use `venv\Scripts\activate`
    ```

3. **Instale as dependências**:
    ```bash
    pip install -r requirements.txt
    ```

## Uso

1. **Executar o Web Scraping com Node.js e Puppeteer**:
    ```bash
    cd teste01_webscraping
    node webscraping.js
    cd ..
    ```

2. **Converter PDF para CSV usando Regex**:
    ```bash
    python teste02_pdfparacsv/pdf_to_csv.py
    ```

3. **Manipular o Banco de Dados**:
    ```bash
    python teste03_bd/database_operations.py
    ```

## Estrutura do Projeto

```plaintext
IntuitiveCare/
├── teste01_webscraping/
│   └── webscraping.js
├── teste02_pdfparacsv/
│   └── pdf_to_csv.py
├── teste03_bd/
│   └── database_operations.py
├── requirements
