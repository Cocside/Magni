const SIDEBAR_WIDTH = "0px"; //defini o padrão do tamanho da barra lateral

function openNav() {
    // pega pelo id os elementos 
    const sidenav = document.getElementById("mySidenav");
    const main = document.getElementById("main");

    const isOpen = sidenav.style.width === SIDEBAR_WIDTH; // verifica se a barra lateral está na posição de 250px

    if (isOpen) {
        // SE ESTIVER fechada: abre a navegação
        sidenav.style.width = "250px";
        main.style.marginLeft = "250px";
    } else {
        // SE ESTIVER aberta: fecha a navegação
        sidenav.style.width = SIDEBAR_WIDTH;
        main.style.marginLeft = SIDEBAR_WIDTH;
    }
}
