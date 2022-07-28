let dropdown_btn = document.querySelector(".menu-btn");
let menu = document.querySelector(".menu-content");
dropdown_btn.addEventListener('click',function(){
    if (menu.style.display==='') {
        menu.style.display = "block";
    }
    else {
        menu.style.display='';
    }
} )