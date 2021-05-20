import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Help Isa!", "Create a list!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };