import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["fanbase", "encyclopedia", "destination"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
