function post (){
  const submit = document.getElementById("review-btn");
  submit.addEventListener("click", (e) => {
    const formData = new FormData(document.getElementById("new_reviews"));
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/reviews", true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
      const item = XHR.response.article;
      const contentsArea = document.getElementById("contents_area");
      const articleText = document.getElementById("reviews_text");
      const HTML = `
        <div class="reviews">
          ${ item.text }
        </div>`;
      contentsArea.insertAdjacentHTML("afterbegin", HTML);
      reviewsText.value = "";
    };
    e.preventDefault();
  });
};

window.addEventListener('load', post);
