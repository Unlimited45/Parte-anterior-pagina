document.addEventListener('DONcontentLoaded', ()=>{
    const elementosCarousel=document.querySelectorAll('.Carousel');
    M.Carousel.init(elementosCarousel,{
        duration: 150
    });
});