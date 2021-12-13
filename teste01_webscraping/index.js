const puppeteerExtra = require('puppeteer-extra');
puppeteer = puppeteerExtra;
puppeteer.use(require('puppeteer-extra-plugin-user-preferences')({
    userPrefs: {
        plugins: {
            always_open_pdf_externally: true,
            plugins_disabled: ["Chrome PDF Viewer"],
        },
    }
}));
// Funções extras do puppeteer para desligar a visualização do pdf pelo chrome e baixar automaticamente ao abrir a página
async function baixarPDF(){
    const browser = await puppeteer.launch({headless: false});
    const page = await browser.newPage();
    await page.setDefaultNavigationTimeout(0);
// Abrindo a URL e entrando na pagina de download do pdf
    const url = 'https://www.gov.br/ans/pt-br/assuntos/prestadores/padrao-para-troca-de-informacao-de-saude-suplementar-2013-tiss';
    await page.goto(url);
    await page.click('.alert-link');
// Entrando na página de download e abrindo o arquivo .pdf
    await page.waitForSelector('a.btn');
    await page.click('a.btn');
// Aguarda o fim do carregamento da página e fecha o browser
    await page.waitForTimeout(5000);
    await browser.close();

}


baixarPDF();