let galleryItems = document.querySelector(".gallery-items").children;
let prev = document.querySelector(".prev");
let next = document.querySelector(".next");
let page = document.querySelector(".page");
let maxItem = 1;
let index = 1;
let pagination = Math.ceil(galleryItems.length/maxItem);
prev.addEventListener("click", function() {
    index--;
    check();
    showItem();
})
next.addEventListener("click", function(){
    index++;
    check();
    showItem();
})
function check() {
    if(index == pagination) {
        next.classList.add("disabled");
    }
    else{
        next.classList.remove("disabled");
    }
    if (index ==1 ) {
        prev.classList.add("disabled");
    }
    else {
        prev.classList.remove("disabled");
    }
}
function showItem() {
    for (let i = 0; i < galleryItems.length; i++) {
        galleryItems[i].classList.remove("show");
        galleryItems[i].classList.add("hide");
        if (i >= (index*maxItem)-maxItem && i<index*maxItem){
            galleryItems[i].classList.remove("hide");
            galleryItems[i].classList.add("show");
        }
        page.innerHTML= index;
    }
}
window.onload= function() {
    showItem();
    check();
}