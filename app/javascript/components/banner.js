import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Collect your movies!", "Create a list!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };