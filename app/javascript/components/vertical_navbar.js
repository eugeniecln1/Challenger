// import $ from "jquery";

// const initVerticalNavbar = () => {
//    $(document).ready(function () {

//     $('.nav-linkCollapse').on('click', function () {
//         $('.nav-link').toggleClass('active');
//     });

// });

// export { initVerticalNavbar }

const closeNav = () => {
  document.getElementById("mySidenav").style.width = "70px";
  document.getElementById("main").style.marginLeft = "0";
  document.body.style.backgroundColor = "white";
  document.getElementById("navbar-all").style.visibility = "hidden";
}

const openNav = () => {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.getElementById("navbar-all").style.visibility = "visible";
}

const toggleNav = () => {
  const button = document.getElementById("myBtn");
  button.addEventListener("click", (e) => {
    if (document.getElementById("mySidenav").style.width === "250px") {
      closeNav();
    } else {
      openNav();
    }
  });
}

export { toggleNav };

