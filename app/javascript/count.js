function count (){
  const reviewsText  = document.getElementById("reviews_text");
  articleText.addEventListener("keyup", () => {
    console.log(reviewsText.value);
  });
};

window.addEventListener('load', count);
