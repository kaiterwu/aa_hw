document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const favoriteSubmit = (e) =>{
    e.preventDefault();

    const favInput = document.querySelector(".favorite-input");
    const favorite = favInput.value; 
    favInput.value = "";

    const newLi = document.createElement('li');
    newLi.textContent = favorite; 

    const favorites = document.getElementById("sf-places");
    favorites.appendChild(newLi);
  };

  const listsubmitButt = document.querySelector(".favorite-submit");
  listsubmitButt.addEventListener("click",favoriteSubmit);



  // adding new photos

  // --- your code here!

  const showPhotos = (e) => {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === "photo-form-container "){
      photoFormDiv.className = "photo-form-container hidden"
    }else {
      photoFormDiv.className = "photo-form-container";
    }

  };
  const photoFormShowButt = document.querySelector(".photo-show-button");
  photoFormShowButt.addEventListener("click",showPhotos);

  const processPhotoSubmit = (e) => {
    e.preventDefault();

    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = ""

    const newImg = document.createElement("img")
    newImg.src = photoUrl;

    const newPhotoLi = document.createElement("li")
    newPhotoLi.appendChild(newImg);

    const dogPhotoList = document.querySelector(".dog-photos")
    dogPhotoList.appendChild(newPhotoLi);
  }

  const submitPhotoButt = document.querySelector("photo-url-submit")
  submitPhotoButt.addEventListener("click",processPhotoSubmit)


});
