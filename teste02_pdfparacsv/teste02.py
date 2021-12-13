
import re
import pandas as pd
import PyPDF2
from zipfile import *

pdfFileObj = open("pdf/componente_organizacional.pdf", 'rb')
pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
#Monstrando qual arquivo pdf será ultilizado e colocando-o na função do pypdf2 para ler

#Quadro 30
# Capturando a pagina em que se encontra a tabela 30
q30page = pdfReader.getPage(113)
# Capturando a string da tabela 30 por meio da regex
temp = re.search(r'Tabela\sde\sTipo\sdo\sDemandante[\d\D]+Fonte', q30page.extractText()).group(0) # Capturando tudo entre Tabelas[...] + todos os caracteres até a palavra fonte
q30 = []
for x in re.finditer(r'(\d{1,3})\n\s+(\D+)\s+', temp): #Capturando um grupo de um a três + caractere que não é um digito
    q30.append([x.group(1), x.group(2).replace('\n ', '')]) #append separa em 2 grupos a informação do x
# Criando DataFrame com a Lista q30 e o nome das colunas da Tabela 30
df1 = pd.DataFrame(q30, columns=['Codigo', 'Descrição da categoria'])
# Escrevendo Arquivo CSV com o DataFrame
df1.to_csv("Quadro30.csv", index=False)


#Quadro 31
pages31 = [114,115,116,117,118,119,120]
quadro31 = ''
for page in pages31:
    pg = pdfReader.getPage(page)
    quadro31 += pg.extractText()
temp = re.search(r'Tabela\sde\sCategoria\sdo\sPadrão\sTISS\s+[\d\D]+Quadro\s+32', quadro31).group(0)
temp = re.sub(r'\d+\s+Padr.o\sTISS\s+-\s+Componente\sOrganizacional\s+novembro\s+de\s+202\s1\s+', '', temp) # Capturando tudo entre Padrao TISS[...] + todos os caracteres até a palavra novembro de 2021
q31 = []
#Separando
for x in re.finditer(r'(\d{1,3})\n\s+(\D+)\s+', temp): #Capturando um grupo de um a três + caractere que não é um digito
    q31.append([x.group(1), x.group(2).replace('\n ', '')])
df2 = pd.DataFrame(q31, columns=['Código', 'Descrição da categoria'])
df2.to_csv('Quadro31.csv', index=False)

#Quadro 32
#Capturando a pagina 120
quadro32 = ''
pg = pdfReader.getPage(119)
pg = pg.extractText();
temp = re.search(r'Tabela\sde\sTipo\sde\sSolicitação\s+[\d\D]+', pg).group(0) # Capturando todos os caracteres desde Tabela até o fim da pagina
q32 = []

for x in re.finditer(r'(\d{1,3})(\D+)', temp):
    q32.append([x.group(1), x.group(2).replace('\n', '')])  # Troca a linha para nada para organizar
    df2 = pd.DataFrame(q32, columns=['Código', 'Descrição da categoria'])
df2.to_csv('Quadro32.csv', index=False)


#Criar um objeto pra guardar o zipfile
zipObj = ZipFile('Teste_Andre_Luiz_Leme.zip', 'w')

#Armazenar os Quadros na zipfile
zipObj.write('Quadro30.csv')
zipObj.write('Quadro31.csv')
zipObj.write('Quadro32.csv')
print("Zip dos Arquivos ok")
#Fechando o zipfile
zipObj.close()




