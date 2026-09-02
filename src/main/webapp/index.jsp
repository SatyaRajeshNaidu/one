<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Modern Marketplace</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   ROOT
========================================================= */

:root{
    --bg:#f4f5f1;
    --surface:#ffffff;
    --surface-2:#e9ece5;
    --ink:#11130f;
    --muted:#747970;
    --line:#dfe3da;
    --lime:#c8f31d;
    --lime-dark:#9bc400;
    --dark:#10120e;
    --danger:#ff5c5c;

    --shadow:0 18px 50px rgba(18,24,10,.08);

    --radius:24px;
}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:"DM Sans",sans-serif;
    background:var(--bg);
    color:var(--ink);
    line-height:1.5;
}

button,
input,
select{
    font:inherit;
}

button{
    cursor:pointer;
    border:0;
}

a{
    text-decoration:none;
    color:inherit;
}

img{
    width:100%;
    display:block;
    object-fit:cover;
}

.container{
    width:min(1380px,calc(100% - 48px));
    margin:auto;
}

/* =========================================================
   ANNOUNCEMENT
========================================================= */

.announcement{
    background:var(--dark);
    color:white;
    text-align:center;
    padding:9px 20px;
    font-size:13px;
}

.announcement strong{
    color:var(--lime);
}

/* =========================================================
   HEADER
========================================================= */

.header{
    position:sticky;
    top:0;
    z-index:1000;

    background:rgba(244,245,241,.92);
    backdrop-filter:blur(18px);

    border-bottom:1px solid rgba(223,227,218,.8);
}

.header-inner{
    min-height:76px;

    display:grid;
    grid-template-columns:auto 1fr auto;

    align-items:center;

    gap:35px;
}

.logo{
    font-family:"Space Grotesk",sans-serif;
    font-size:25px;
    font-weight:700;
    letter-spacing:-1.2px;
}

.logo span{
    color:var(--lime-dark);
}

.nav{
    display:flex;
    justify-content:center;
    gap:32px;
}

.nav a{
    font-size:14px;
    font-weight:600;
    color:#555b51;

    position:relative;
}

.nav a:hover,
.nav a.active{
    color:var(--ink);
}

.nav a.active:after{
    content:"";

    position:absolute;

    height:3px;
    width:16px;

    background:var(--lime-dark);

    border-radius:5px;

    bottom:-9px;
    left:50%;

    transform:translateX(-50%);
}

.header-actions{
    display:flex;
    align-items:center;
    gap:9px;
}

.icon-btn{
    width:42px;
    height:42px;

    border-radius:50%;

    background:var(--surface);

    border:1px solid var(--line);

    display:grid;
    place-items:center;

    color:var(--ink);

    position:relative;

    transition:.2s;
}

.icon-btn:hover{
    background:var(--dark);
    color:white;

    transform:translateY(-2px);
}

.count{
    position:absolute;

    top:-4px;
    right:-3px;

    min-width:18px;
    height:18px;

    border-radius:20px;

    background:var(--lime);

    color:#111;

    font-size:10px;
    font-weight:800;

    display:grid;
    place-items:center;
}

.menu-btn{
    display:none;
}

/* =========================================================
   HERO
========================================================= */

.hero{
    padding:34px 0 18px;
}

.hero-grid{
    display:grid;

    grid-template-columns:1.6fr .75fr;

    gap:18px;
}

.hero-main{
    min-height:525px;

    background:var(--lime);

    border-radius:34px;

    padding:50px;

    position:relative;

    overflow:hidden;
}

.hero-copy{
    position:relative;

    z-index:2;

    max-width:560px;
}

.eyebrow{
    display:inline-flex;

    align-items:center;

    gap:8px;

    background:#11130f;

    color:white;

    border-radius:100px;

    padding:8px 13px;

    font-size:12px;

    font-weight:700;

    text-transform:uppercase;

    letter-spacing:.08em;
}

.hero h1{
    font-family:"Space Grotesk",sans-serif;

    font-size:clamp(44px,5vw,78px);

    line-height:.94;

    letter-spacing:-4px;

    margin:28px 0 22px;
}

.hero p{
    font-size:17px;

    color:#34382f;

    max-width:470px;
}

.primary-btn{
    margin-top:30px;

    display:inline-flex;

    align-items:center;

    gap:12px;

    padding:14px 20px;

    background:var(--dark);

    color:white;

    border-radius:100px;

    font-weight:700;

    transition:.2s;
}

.primary-btn:hover{
    transform:translateY(-2px);

    box-shadow:0 10px 25px rgba(0,0,0,.18);
}

.hero-watch{
    position:absolute;

    width:47%;

    max-width:470px;

    right:1%;

    bottom:-7%;

    transform:rotate(-8deg);

    filter:drop-shadow(
        0 25px 28px rgba(0,0,0,.25)
    );
}

/* =========================================================
   PROMO
========================================================= */

.hero-side{
    display:grid;

    grid-template-rows:1fr 1fr;

    gap:18px;
}

.promo{
    border-radius:30px;

    padding:32px;

    overflow:hidden;

    position:relative;

    min-height:253px;
}

.promo.dark{
    background:var(--dark);

    color:white;
}

.promo.gray{
    background:#dfe5d8;
}

.promo h2{
    font-family:"Space Grotesk";

    font-size:31px;

    line-height:1.02;

    letter-spacing:-1.5px;

    max-width:230px;
}

.promo p{
    font-size:13px;

    color:#aeb3aa;

    margin-top:10px;

    max-width:220px;
}

.promo.gray p{
    color:#5e645b;
}

.promo-link{
    display:inline-flex;

    gap:8px;

    margin-top:22px;

    font-weight:700;

    font-size:13px;
}

.promo img{
    position:absolute;

    width:52%;

    right:-3%;

    bottom:-9%;

    height:90%;

    mix-blend-mode:multiply;
}

.promo.dark img{
    mix-blend-mode:screen;

    opacity:.85;
}

/* =========================================================
   SERVICES
========================================================= */

.services{
    display:grid;

    grid-template-columns:repeat(4,1fr);

    background:var(--surface);

    border:1px solid var(--line);

    border-radius:22px;

    margin:18px 0 70px;

    overflow:hidden;
}

.service{
    display:flex;

    align-items:center;

    gap:14px;

    padding:22px 25px;

    border-right:1px solid var(--line);
}

.service:last-child{
    border-right:0;
}

.service i{
    font-size:19px;
}

.service b{
    display:block;

    font-size:13px;
}

.service span{
    display:block;

    color:var(--muted);

    font-size:11px;

    margin-top:2px;
}

/* =========================================================
   SECTION
========================================================= */

.section{
    padding:0 0 76px;
}

.section-head{
    display:flex;

    align-items:end;

    justify-content:space-between;

    margin-bottom:25px;
}

.section-head h2{
    font-family:"Space Grotesk";

    font-size:34px;

    letter-spacing:-1.8px;
}

.section-head p{
    color:var(--muted);

    font-size:13px;

    margin-top:3px;
}

.view-all{
    font-size:13px;

    font-weight:700;

    border-bottom:1px solid var(--ink);

    padding-bottom:4px;
}

/* =========================================================
   CATEGORIES
========================================================= */

.category-grid{
    display:grid;

    grid-template-columns:repeat(6,1fr);

    gap:16px;
}

.category{
    background:var(--surface);

    border:1px solid var(--line);

    border-radius:22px;

    padding:14px;

    text-align:center;

    transition:.25s;
}

.category:hover,
.category.selected{
    background:var(--dark);

    color:white;

    transform:translateY(-4px);
}

.category-img{
    aspect-ratio:1;

    border-radius:17px;

    overflow:hidden;

    background:var(--surface-2);
}

.category-img img{
    height:100%;
}

.category strong{
    display:block;

    font-size:13px;

    margin-top:12px;
}

.category small{
    color:var(--muted);

    font-size:11px;
}

.category:hover small,
.category.selected small{
    color:#adb2a8;
}

/* =========================================================
   PRODUCT TOOLBAR
========================================================= */

.product-toolbar{
    display:flex;

    justify-content:space-between;

    align-items:center;

    margin-bottom:22px;
}

.filters{
    display:flex;

    gap:8px;

    flex-wrap:wrap;
}

.filter{
    padding:9px 14px;

    border:1px solid var(--line);

    background:var(--surface);

    border-radius:100px;

    font-size:12px;

    font-weight:700;
}

.filter.active,
.filter:hover{
    background:var(--dark);

    color:white;
}

.sort{
    border:1px solid var(--line);

    background:white;

    padding:10px 13px;

    border-radius:100px;

    font-size:12px;
}

/* =========================================================
   PRODUCTS
========================================================= */

.product-grid{
    display:grid;

    grid-template-columns:repeat(4,1fr);

    gap:18px;
}

.product-card{
    background:var(--surface);

    border:1px solid var(--line);

    border-radius:25px;

    overflow:hidden;

    transition:.25s;

    position:relative;
}

.product-card:hover{
    transform:translateY(-6px);

    box-shadow:var(--shadow);
}

.product-image{
    height:290px;

    background:#eef0ea;

    position:relative;

    overflow:hidden;
}

.product-image img{
    height:100%;

    transition:.45s;
}

.product-card:hover .product-image img{
    transform:scale(1.05);
}

.badge{
    position:absolute;

    left:13px;

    top:13px;

    background:var(--lime);

    padding:6px 9px;

    border-radius:8px;

    font-size:10px;

    font-weight:800;

    text-transform:uppercase;
}

.wish{
    position:absolute;

    right:13px;

    top:13px;

    width:36px;

    height:36px;

    border-radius:50%;

    background:rgba(255,255,255,.92);

    display:grid;

    place-items:center;

    transition:.2s;
}

.wish.active{
    background:var(--dark);

    color:var(--lime);
}

.product-info{
    padding:17px;
}

.product-category{
    color:var(--muted);

    font-size:10px;

    text-transform:uppercase;

    letter-spacing:.1em;

    font-weight:700;
}

.product-name{
    font-family:"Space Grotesk";

    font-size:17px;

    margin:6px 0 8px;

    letter-spacing:-.5px;
}

.rating{
    font-size:11px;

    color:#9b6500;
}

.rating span{
    color:var(--muted);

    margin-left:4px;
}

.product-bottom{
    display:flex;

    align-items:center;

    justify-content:space-between;

    margin-top:15px;
}

.price{
    font-size:18px;

    font-weight:800;
}

.old{
    font-size:11px;

    color:#999;

    text-decoration:line-through;

    margin-left:5px;
}

.add{
    width:38px;

    height:38px;

    border-radius:50%;

    background:var(--dark);

    color:white;

    display:grid;

    place-items:center;

    transition:.2s;
}

.add:hover{
    background:var(--lime);

    color:#111;
}

/* =========================================================
   EDITORIAL
========================================================= */

.editorial{
    display:grid;

    grid-template-columns:1fr 1fr;

    min-height:390px;

    border-radius:32px;

    overflow:hidden;

    background:#e0e6d8;
}

.editorial-copy{
    padding:55px;

    display:flex;

    flex-direction:column;

    justify-content:center;
}

.editorial-copy .eyebrow{
    align-self:flex-start;
}

.editorial h2{
    font-family:"Space Grotesk";

    font-size:clamp(38px,4vw,58px);

    line-height:.96;

    letter-spacing:-3px;

    margin:20px 0 14px;
}

.editorial p{
    max-width:450px;

    color:#5d6358;

    font-size:14px;
}

.editorial-img{
    min-height:390px;
}

.editorial-img img{
    height:100%;
}

/* =========================================================
   FLASH SALE
========================================================= */

.flash{
    background:var(--dark);

    color:white;

    border-radius:32px;

    padding:42px;

    position:relative;

    overflow:hidden;
}

.flash:before{
    content:"";

    width:350px;

    height:350px;

    background:var(--lime);

    position:absolute;

    border-radius:50%;

    right:-150px;

    top:-180px;

    opacity:.13;
}

.flash-head{
    display:flex;

    align-items:center;

    justify-content:space-between;

    margin-bottom:25px;
}

.flash h2{
    font-family:"Space Grotesk";

    font-size:34px;

    letter-spacing:-1.5px;
}

.timer{
    display:flex;

    gap:7px;
}

.time{
    min-width:50px;

    text-align:center;

    background:#252a21;

    border-radius:10px;

    padding:8px 7px;
}

.time b{
    display:block;

    color:var(--lime);

    font-size:17px;
}

.time small{
    font-size:8px;

    color:#9da398;

    text-transform:uppercase;
}

.flash-grid{
    display:grid;

    grid-template-columns:repeat(4,1fr);

    gap:15px;
}

.flash-product{
    background:#191c17;

    border:1px solid #2c3128;

    border-radius:20px;

    overflow:hidden;
}

.flash-product img{
    height:190px;
}

.flash-product-info{
    padding:14px;
}

.flash-product-info p{
    font-size:13px;

    font-weight:700;
}

.flash-price{
    color:var(--lime);

    font-weight:800;

    margin-top:5px;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    background:var(--lime);

    border-radius:32px;

    padding:50px;

    display:flex;

    align-items:center;

    justify-content:space-between;

    gap:30px;
}

.newsletter h2{
    font-family:"Space Grotesk";

    font-size:38px;

    letter-spacing:-2px;

    line-height:1;
}

.newsletter p{
    font-size:13px;

    margin-top:8px;

    color:#41473a;
}

.news-form{
    display:flex;

    background:white;

    border-radius:100px;

    padding:5px;

    min-width:440px;
}

.news-form input{
    flex:1;

    border:0;

    outline:0;

    background:transparent;

    padding:0 16px;

    min-width:0;

    font-size:13px;
}

.news-form button{
    background:var(--dark);

    color:white;

    border-radius:100px;

    padding:12px 19px;

    font-weight:700;

    font-size:12px;
}

/* =========================================================
   FOOTER
========================================================= */

.footer{
    margin-top:70px;

    background:var(--dark);

    color:white;

    padding:55px 0 28px;
}

.footer-grid{
    display:grid;

    grid-template-columns:1.5fr repeat(3,1fr);

    gap:45px;
}

.footer-brand p{
    color:#92988d;

    font-size:13px;

    max-width:290px;

    margin-top:14px;
}

.socials{
    display:flex;

    gap:8px;

    margin-top:20px;
}

.socials a{
    width:34px;

    height:34px;

    border-radius:50%;

    background:#20241e;

    display:grid;

    place-items:center;

    font-size:12px;
}

.footer h4{
    font-size:12px;

    text-transform:uppercase;

    letter-spacing:.1em;

    margin-bottom:15px;
}

.footer li{
    list-style:none;

    margin:9px 0;

    color:#969c91;

    font-size:12px;
}

.footer li a:hover{
    color:var(--lime);
}

.footer-bottom{
    border-top:1px solid #292d27;

    margin-top:45px;

    padding-top:20px;

    display:flex;

    justify-content:space-between;

    color:#747b70;

    font-size:11px;
}

/* =========================================================
   SEARCH
========================================================= */

.search-overlay{
    position:fixed;

    inset:0;

    background:rgba(8,10,7,.7);

    backdrop-filter:blur(10px);

    z-index:2000;

    display:none;

    align-items:flex-start;

    justify-content:center;

    padding-top:120px;
}

.search-overlay.open{
    display:flex;
}

.search-box{
    width:min(700px,calc(100% - 35px));

    background:white;

    border-radius:25px;

    padding:10px;

    display:flex;

    align-items:center;
}

.search-box i{
    margin:0 12px;

    color:#777;
}

.search-box input{
    flex:1;

    border:0;

    outline:0;

    font-size:18px;

    padding:15px;
}

.close-search{
    width:42px;

    height:42px;

    border-radius:50%;

    background:var(--dark);

    color:white;
}

/* =========================================================
   TOAST
========================================================= */

.toast{
    position:fixed;

    right:22px;

    bottom:22px;

    background:var(--dark);

    color:white;

    padding:13px 17px;

    border-radius:13px;

    box-shadow:0 12px 35px rgba(0,0,0,.2);

    transform:translateY(100px);

    opacity:0;

    transition:.3s;

    z-index:3000;

    font-size:13px;
}

.toast.show{
    transform:translateY(0);

    opacity:1;
}

.toast strong{
    color:var(--lime);
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1050px){

    .header-inner{
        grid-template-columns:auto auto;

        justify-content:space-between;
    }

    .nav{
        display:none;
    }

    .menu-btn{
        display:grid;
    }

    .nav.mobile-open{
        display:flex;

        position:absolute;

        top:76px;

        left:0;

        right:0;

        padding:20px;

        background:var(--bg);

        border-bottom:1px solid var(--line);

        flex-direction:column;

        align-items:center;
    }

    .hero-grid{
        grid-template-columns:1fr;
    }

    .hero-side{
        grid-template-columns:1fr 1fr;

        grid-template-rows:auto;
    }

    .category-grid{
        grid-template-columns:repeat(3,1fr);
    }

    .product-grid{
        grid-template-columns:repeat(3,1fr);
    }

    .flash-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .footer-grid{
        grid-template-columns:1.5fr repeat(2,1fr);
    }
}

@media(max-width:720px){

    .container{
        width:min(100% - 28px,1380px);
    }

    .hero-main{
        min-height:560px;

        padding:28px;
    }

    .hero h1{
        font-size:48px;

        letter-spacing:-2.5px;
    }

    .hero-watch{
        width:75%;

        right:-10%;

        bottom:0;
    }

    .hero-side{
        grid-template-columns:1fr;
    }

    .promo{
        min-height:220px;
    }

    .services{
        grid-template-columns:1fr 1fr;

        margin-bottom:50px;
    }

    .service:nth-child(2){
        border-right:0;
    }

    .service:nth-child(-n+2){
        border-bottom:1px solid var(--line);
    }

    .category-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .product-grid{
        grid-template-columns:repeat(2,1fr);

        gap:12px;
    }

    .product-image{
        height:210px;
    }

    .product-name{
        font-size:15px;
    }

    .editorial{
        grid-template-columns:1fr;
    }

    .editorial-copy{
        padding:35px;
    }

    .editorial-img{
        min-height:280px;
    }

    .flash{
        padding:25px;
    }

    .flash-head{
        align-items:flex-start;

        gap:20px;

        flex-direction:column;
    }

    .newsletter{
        padding:35px 25px;

        display:block;
    }

    .newsletter h2{
        font-size:32px;
    }

    .news-form{
        min-width:0;

        margin-top:22px;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;

        gap:30px;
    }

    .footer-brand{
        grid-column:1/-1;
    }

    .footer-bottom{
        flex-direction:column;

        gap:8px;
    }
}

@media(max-width:430px){

    .header-inner{
        min-height:68px;
    }

    .header-actions .icon-btn:nth-child(2){
        display:none;
    }

    .hero{
        padding-top:15px;
    }

    .hero-main{
        min-height:530px;
    }

    .hero h1{
        font-size:42px;
    }

    .services{
        grid-template-columns:1fr;
    }

    .service{
        border-right:0!important;

        border-bottom:1px solid var(--line)!important;
    }

    .service:last-child{
        border-bottom:0!important;
    }

    .category-grid{
        gap:9px;
    }

    .category{
        padding:9px;
    }

    .product-grid{
        grid-template-columns:1fr 1fr;
    }

    .product-image{
        height:180px;
    }

    .product-info{
        padding:12px;
    }

    .price{
        font-size:15px;
    }

    .add{
        width:34px;

        height:34px;
    }

    .sort{
        display:none;
    }

    .footer-grid{
        grid-template-columns:1fr;
    }
}

</style>
</head>

<body>

<!-- ======================================================
     ANNOUNCEMENT
======================================================= -->

<div class="announcement">
    New season essentials are here —
    <strong>free delivery on orders over $50</strong>
</div>

<!-- ======================================================
     HEADER
======================================================= -->

<header class="header">

<div class="container header-inner">

<a href="#" class="logo">
    nexus<span>shop</span>.
</a>

<nav class="nav" id="nav">

<a href="#home" class="active">Home</a>

<a href="#categories">Categories</a>

<a href="#products">Shop</a>

<a href="#deals">Deals</a>

<a href="#about">About</a>

</nav>

<div class="header-actions">

<button class="icon-btn"
id="searchBtn"
aria-label="Search">

<i class="fa-solid fa-magnifying-glass"></i>

</button>

<button class="icon-btn"
id="wishHeader"
aria-label="Wishlist">

<i class="fa-regular fa-heart"></i>

<span class="count"
id="wishCount">0</span>

</button>

<button class="icon-btn"
aria-label="Shopping cart">

<i class="fa-solid fa-bag-shopping"></i>

<span class="count"
id="cartCount">0</span>

</button>

<button class="icon-btn menu-btn"
id="menuBtn"
aria-label="Menu">

<i class="fa-solid fa-bars"></i>

</button>

</div>

</div>

</header>

<!-- ======================================================
     MAIN
======================================================= -->

<main id="home">

<!-- ======================================================
     HERO
======================================================= -->

<section class="hero container">

<div class="hero-grid">

<article class="hero-main">

<div class="hero-copy">

<span class="eyebrow">
    <i class="fa-solid fa-sparkles"></i>
    New collection
</span>

<h1>
    Better things.<br>
    Better living.
</h1>

<p>
    Discover thoughtfully selected tech, fashion and
    everyday essentials designed to fit your world.
</p>

<a href="#products"
class="primary-btn">

Shop collection

<i class="fa-solid fa-arrow-right"></i>

</a>

</div>

<img
class="hero-watch"
src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=900&q=85"
alt="Smart watch">

</article>

<div class="hero-side">

<article class="promo dark">

<h2>
    Audio that moves with you.
</h2>

<p>
    Premium wireless sound, without the premium attitude.
</p>

<a href="#products"
class="promo-link">

Explore audio

<i class="fa-solid fa-arrow-up-right-from-square"></i>

</a>

<img
src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80"
alt="Headphones">

</article>

<article class="promo gray">

<h2>
    Carry it your way.
</h2>

<p>
    Clean silhouettes made for everyday adventures.
</p>

<a href="#products"
class="promo-link">

Shop bags

<i class="fa-solid fa-arrow-right"></i>

</a>

<img
src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80"
alt="Backpack">

</article>

</div>

</div>

<!-- SERVICES -->

<div class="services">

<div class="service">

<i class="fa-solid fa-truck-fast"></i>

<div>
<b>Fast delivery</b>
<span>Across the country</span>
</div>

</div>

<div class="service">

<i class="fa-solid fa-shield-halved"></i>

<div>
<b>Secure checkout</b>
<span>Protected payments</span>
</div>

</div>

<div class="service">

<i class="fa-solid fa-rotate-left"></i>

<div>
<b>Easy returns</b>
<span>30-day return window</span>
</div>

</div>

<div class="service">

<i class="fa-solid fa-headset"></i>

<div>
<b>Human support</b>
<span>We're here to help</span>
</div>

</div>

</div>

</section>

<!-- ======================================================
     CATEGORIES
======================================================= -->

<section class="section container"
id="categories">

<div class="section-head">

<div>

<h2>Shop by mood</h2>

<p>
    Find your next favorite thing.
</p>

</div>

<a class="view-all"
href="#products">

View all

</a>

</div>

<div class="category-grid"
id="categoryGrid">

<button class="category selected"
data-category="all">

<div class="category-img">

<img
src="https://images.unsplash.com/photo-1550745165-9bc0b252726f?auto=format&fit=crop&w=500&q=80"
alt="All products">

</div>

<strong>Everything</strong>

<small>120+ items</small>

</button>


<button class="category"
data-category="technology">

<div class="category-img">

<img
src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=500&q=80"
alt="Technology">

</div>

<strong>Technology</strong>

<small>32 items</small>

</button>


<button class="category"
data-category="fashion">

<div class="category-img">

<img
src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=500&q=80"
alt="Fashion">

</div>

<strong>Fashion</strong>

<small>28 items</small>

</button>


<button class="category"
data-category="audio">

<div class="category-img">

<img
src="https://images.unsplash.com/photo-1484704849700-f032a568e944?auto=format&fit=crop&w=500&q=80"
alt="Audio">

</div>

<strong>Audio</strong>

<small>19 items</small>

</button>


<button class="category"
data-category="travel">

<div class="category-img">

<img
src="https://images.unsplash.com/photo-1551632811-561732d1e306?auto=format&fit=crop&w=500&q=80"
alt="Travel">

</div>

<strong>Travel</strong>

<small>16 items</small>

</button>


<button class="category"
data-category="accessories">

<div class="category-img">

<img
src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80"
alt="Accessories">

</div>

<strong>Accessories</strong>

<small>25 items</small>

</button>

</div>

</section>

<!-- ======================================================
     PRODUCTS
======================================================= -->

<section class="section container"
id="products">

<div class="section-head">

<div>

<h2>Fresh picks</h2>

<p>
    Popular products, carefully selected.
</p>

</div>

</div>

<div class="product-toolbar">

<div class="filters">

<button class="filter active"
data-filter="all">
All
</button>

<button class="filter"
data-filter="technology">
Tech
</button>

<button class="filter"
data-filter="fashion">
Fashion
</button>

<button class="filter"
data-filter="audio">
Audio
</button>

<button class="filter"
data-filter="travel">
Travel
</button>

</div>

<select class="sort"
id="sort">

<option value="default">
    Sort: Featured
</option>

<option value="low">
    Price: Low to high
</option>

<option value="high">
    Price: High to low
</option>

<option value="name">
    Name: A–Z
</option>

</select>

</div>

<div class="product-grid"
id="productGrid">
</div>

</section>

<!-- ======================================================
     EDITORIAL
======================================================= -->

<section class="section container"
id="about">

<div class="editorial">

<div class="editorial-copy">

<span class="eyebrow">
    The everyday edit
</span>

<h2>
    Less clutter.<br>
    More character.
</h2>

<p>
    We believe shopping should feel simple.
    That's why NexusShop focuses on products
    that balance function, quality and a little
    bit of personality.
</p>

<a href="#products"
class="primary-btn">

Explore the edit

<i class="fa-solid fa-arrow-right"></i>

</a>

</div>

<div class="editorial-img">

<img
src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1200&q=85"
alt="Modern store interior">

</div>

</div>

</section>

<!-- ======================================================
     FLASH SALE
======================================================= -->

<section class="section container"
id="deals">

<div class="flash">

<div class="flash-head">

<div>

<h2>Flash picks</h2>

<p style="color:#90978b;font-size:13px;margin-top:4px">

Limited-time prices on today's favorites.

</p>

</div>

<div class="timer"
id="timer">

<div class="time">

<b id="hours">08</b>

<small>hrs</small>

</div>

<div class="time">

<b id="minutes">42</b>

<small>min</small>

</div>

<div class="time">

<b id="seconds">17</b>

<small>sec</small>

</div>

</div>

</div>

<div class="flash-grid">

<article class="flash-product">

<img
src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
alt="Classic watch">

<div class="flash-product-info">

<p>Classic Everyday Watch</p>

<div class="flash-price">
$89
</div>

</div>

</article>


<article class="flash-product">

<img
src="https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=700&q=80"
alt="Running shoes">

<div class="flash-product-info">

<p>Premium Running Shoes</p>

<div class="flash-price">
$119
</div>

</div>

</article>


<article class="flash-product">

<img
src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=80"
alt="Smartphone">

<div class="flash-product-info">

<p>Everyday Smartphone</p>

<div class="flash-price">
$399
</div>

</div>

</article>


<article class="flash-product">

<img
src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
alt="Sneakers">

<div class="flash-product-info">

<p>Urban Sneakers</p>

<div class="flash-price">
$74
</div>

</div>

</article>

</div>

</div>

</section>

<!-- ======================================================
     NEWSLETTER
======================================================= -->

<section class="section container">

<div class="newsletter">

<div>

<h2>
    Good things,<br>
    straight to you.
</h2>

<p>
    Sign up for new drops, useful finds
    and occasional deals.
</p>

</div>

<form class="news-form"
id="newsletterForm">

<input
type="email"
placeholder="Your email address"
required
aria-label="Email address">

<button type="submit">
    Subscribe
</button>

</form>

</div>

</section>

</main>

<!-- ======================================================
     FOOTER
======================================================= -->

<footer class="footer">

<div class="container">

<div class="footer-grid">

<div class="footer-brand">

<a class="logo"
href="#">
nexus<span>shop</span>.
</a>

<p>
    A modern marketplace for products
    that make everyday life a little better.
</p>

<div class="socials">

<a href="#">
<i class="fa-brands fa-instagram"></i>
</a>

<a href="#">
<i class="fa-brands fa-x-twitter"></i>
</a>

<a href="#">
<i class="fa-brands fa-facebook-f"></i>
</a>

<a href="#">
<i class="fa-brands fa-pinterest-p"></i>
</a>

</div>

</div>


<div>

<h4>Shop</h4>

<ul>

<li>
<a href="#products">
New arrivals
</a>
</li>

<li>
<a href="#products">
Best sellers
</a>
</li>

<li>
<a href="#deals">
Flash deals
</a>
</li>

<li>
<a href="#categories">
Categories
</a>
</li>

</ul>

</div>


<div>

<h4>Help</h4>

<ul>

<li>
<a href="#">
Shipping
</a>
</li>

<li>
<a href="#">
Returns
</a>
</li>

<li>
<a href="#">
Order tracking
</a>
</li>

<li>
<a href="#">
Contact us
</a>
</li>

</ul>

</div>


<div>

<h4>Company</h4>

<ul>

<li>
<a href="#about">
About NexusShop
</a>
</li>

<li>
<a href="#">
Careers
</a>
</li>

<li>
<a href="#">
Journal
</a>
</li>

<li>
<a href="#">
Privacy
</a>
</li>

</ul>

</div>

</div>


<div class="footer-bottom">

<span>
© 2026 NexusShop. All rights reserved.
</span>

<span>
Made for better everyday shopping.
</span>

</div>

</div>

</footer>

<!-- ======================================================
     SEARCH MODAL
======================================================= -->

<div class="search-overlay"
id="searchOverlay">

<form class="search-box"
id="searchForm">

<i class="fa-solid fa-magnifying-glass"></i>

<input
id="searchInput"
type="search"
placeholder="Search products..."
autocomplete="off">

<button
type="button"
class="close-search"
id="closeSearch">

<i class="fa-solid fa-xmark"></i>

</button>

</form>

</div>

<!-- ======================================================
     TOAST
======================================================= -->

<div class="toast"
id="toast">
</div>


<script>

/* =========================================================
   PRODUCT DATA
========================================================= */

const products = [

{
    id:1,
    name:"Apple Watch Series 9",
    category:"technology",
    price:399,
    old:429,
    rating:4.9,
    reviews:128,
    badge:"New",
    image:"https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=900&q=85"
},

{
    id:2,
    name:"Sony WH-1000XM5",
    category:"audio",
    price:349,
    old:399,
    rating:4.8,
    reviews:214,
    badge:"Popular",
    image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=85"
},

{
    id:3,
    name:"Minimal Leather Backpack",
    category:"travel",
    price:129,
    old:159,
    rating:4.7,
    reviews:96,
    badge:"Best seller",
    image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=900&q=85"
},

{
    id:4,
    name:"Premium Running Shoes",
    category:"fashion",
    price:119,
    old:145,
    rating:4.8,
    reviews:173,
    badge:"-18%",
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=85"
},

{
    id:5,
    name:"MacBook Pro 14",
    category:"technology",
    price:1599,
    old:1699,
    rating:4.9,
    reviews:82,
    badge:"Top rated",
    image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85"
},

{
    id:6,
    name:"Instant Film Camera",
    category:"accessories",
    price:99,
    old:119,
    rating:4.6,
    reviews:61,
    badge:"New",
    image:"https://images.unsplash.com/photo-1452780212940-6f5c0d14d848?auto=format&fit=crop&w=900&q=85"
},

{
    id:7,
    name:"Classic Everyday Shirt",
    category:"fashion",
    price:59,
    old:75,
    rating:4.7,
    reviews:147,
    badge:"-21%",
    image:"https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=900&q=85"
},

{
    id:8,
    name:"Wireless Portable Speaker",
    category:"audio",
    price:89,
    old:109,
    rating:4.8,
    reviews:104,
    badge:"Popular",
    image:"https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=900&q=85"
}

];

/* =========================================================
   STATE
========================================================= */

let currentCategory = "all";

let searchTerm = "";

let cart = 0;

let wishlist = new Set();

/* =========================================================
   ELEMENTS
========================================================= */

const productGrid =
document.getElementById("productGrid");

const toast =
document.getElementById("toast");

const cartCount =
document.getElementById("cartCount");

const wishCount =
document.getElementById("wishCount");

/* =========================================================
   MONEY
========================================================= */

function money(value){

    return "$" +
    value.toLocaleString("en-US");

}

/* =========================================================
   RENDER PRODUCTS
========================================================= */

function renderProducts(){

    let list = products.filter(product => {

        const categoryMatch =
            currentCategory === "all" ||
            product.category === currentCategory;

        const searchMatch =
            product.name
            .toLowerCase()
            .includes(searchTerm.toLowerCase()) ||

            product.category
            .toLowerCase()
            .includes(searchTerm.toLowerCase());

        return categoryMatch && searchMatch;

    });


    const sort =
        document.getElementById("sort").value;


    if(sort === "low"){

        list.sort(
            (a,b) => a.price - b.price
        );

    }


    if(sort === "high"){

        list.sort(
            (a,b) => b.price - a.price
        );

    }


    if(sort === "name"){

        list.sort(
            (a,b) =>
            a.name.localeCompare(b.name)
        );

    }


    productGrid.innerHTML = "";


    if(!list.length){

        productGrid.innerHTML = `

        <div
        style="
        grid-column:1/-1;
        text-align:center;
        padding:60px;
        color:#747970;
        ">

        <i
        class="fa-regular fa-face-frown"
        style="font-size:32px">
        </i>

        <p style="margin-top:10px">
            No products found.
        </p>

        </div>

        `;

        return;

    }


    list.forEach(product => {

        const active =
            wishlist.has(product.id);


        productGrid.insertAdjacentHTML(
            "beforeend",

            `

            <article class="product-card">

                <div class="product-image">

                    <img
                    src="${product.image}"
                    alt="${product.name}"
                    loading="lazy">

                    <span class="badge">
                        ${product.badge}
                    </span>

                    <button
                    class="wish ${active ? "active":""}"
                    data-wish="${product.id}"
                    aria-label="Add ${product.name} to wishlist">

                        <i class="${
                            active
                            ? "fa-solid"
                            : "fa-regular"
                        } fa-heart"></i>

                    </button>

                </div>


                <div class="product-info">

                    <div class="product-category">
                        ${product.category}
                    </div>

                    <h3 class="product-name">
                        ${product.name}
                    </h3>

                    <div class="rating">

                        ★ ${product.rating}

                        <span>
                            (${product.reviews})
                        </span>

                    </div>


                    <div class="product-bottom">

                        <div class="price">

                            ${money(product.price)}

                            <span class="old">
                                ${money(product.old)}
                            </span>

                        </div>


                        <button
                        class="add"
                        data-add="${product.id}"
                        aria-label="Add ${product.name} to cart">

                            <i class="fa-solid fa-plus"></i>

                        </button>

                    </div>

                </div>

            </article>

            `
        );

    });

}

/* =========================================================
   TOAST
========================================================= */

function showToast(message){

    toast.innerHTML = message;

    toast.classList.add("show");

    clearTimeout(showToast.timer);

    showToast.timer =
        setTimeout(() => {

            toast.classList.remove("show");

        },2200);

}

/* =========================================================
   PRODUCT EVENTS
========================================================= */

productGrid.addEventListener(
"click",
function(event){

    const add =
        event.target.closest("[data-add]");

    const wish =
        event.target.closest("[data-wish]");


    if(add){

        const product =
            products.find(
                item =>
                item.id === Number(add.dataset.add)
            );


        cart++;

        cartCount.textContent =
            cart;


        showToast(
            `<strong>Added</strong> ${product.name}`
        );

    }


    if(wish){

        const id =
            Number(wish.dataset.wish);


        if(wishlist.has(id)){

            wishlist.delete(id);

            showToast(
                "Removed from wishlist"
            );

        }
        else{

            wishlist.add(id);

            showToast(
                "Added to wishlist"
            );

        }


        wishCount.textContent =
            wishlist.size;


        renderProducts();

    }

});

/* =========================================================
   FILTERS
========================================================= */

document
.querySelectorAll("[data-filter]")
.forEach(button => {

    button.addEventListener(
    "click",
    function(){

        currentCategory =
            button.dataset.filter;


        document
        .querySelectorAll("[data-filter]")
        .forEach(item =>
            item.classList.remove("active")
        );


        button.classList.add("active");


        renderProducts();

    });

});

/* =========================================================
   CATEGORY CARDS
========================================================= */

document
.querySelectorAll(".category")
.forEach(button => {

    button.addEventListener(
    "click",
    function(){

        currentCategory =
            button.dataset.category;


        document
        .querySelectorAll(".category")
        .forEach(item =>
            item.classList.remove("selected")
        );


        button.classList.add("selected");


        document
        .querySelectorAll("[data-filter]")
        .forEach(item => {

            item.classList.toggle(
                "active",
                item.dataset.filter === currentCategory
            );

        });


        renderProducts();


        document
        .getElementById("products")
        .scrollIntoView({
            behavior:"smooth"
        });

    });

});

/* =========================================================
   SORT
========================================================= */

document
.getElementById("sort")
.addEventListener(
    "change",
    renderProducts
);

/* =========================================================
   SEARCH
========================================================= */

const searchOverlay =
document.getElementById("searchOverlay");

const searchInput =
document.getElementById("searchInput");


document
.getElementById("searchBtn")
.addEventListener(
"click",
function(){

    searchOverlay.classList.add("open");

    setTimeout(
        () => searchInput.focus(),
        100
    );

});


document
.getElementById("closeSearch")
.addEventListener(
"click",
function(){

    searchOverlay.classList.remove("open");

});


searchOverlay.addEventListener(
"click",
function(event){

    if(event.target === searchOverlay){

        searchOverlay.classList.remove("open");

    }

});


document
.getElementById("searchForm")
.addEventListener(
"submit",
function(event){

    event.preventDefault();

    searchTerm =
        searchInput.value.trim();

    searchOverlay.classList.remove("open");

    renderProducts();

    document
    .getElementById("products")
    .scrollIntoView({
        behavior:"smooth"
    });

});


searchInput.addEventListener(
"input",
function(){

    searchTerm =
        searchInput.value.trim();

    renderProducts();

});


document.addEventListener(
"keydown",
function(event){

    if(event.key === "Escape"){

        searchOverlay.classList.remove(
            "open"
        );

    }

});

/* =========================================================
   MOBILE MENU
========================================================= */

document
.getElementById("menuBtn")
.addEventListener(
"click",
function(){

    document
    .getElementById("nav")
    .classList.toggle("mobile-open");

});


document
.querySelectorAll(".nav a")
.forEach(link => {

    link.addEventListener(
    "click",
    function(){

        document
        .getElementById("nav")
        .classList.remove(
            "mobile-open"
        );


        document
        .querySelectorAll(".nav a")
        .forEach(item =>
            item.classList.remove("active")
        );


        link.classList.add("active");

    });

});

/* =========================================================
   NEWSLETTER
========================================================= */

document
.getElementById("newsletterForm")
.addEventListener(
"submit",
function(event){

    event.preventDefault();


    const input =
        event.target.querySelector("input");


    showToast(
        "<strong>You're in!</strong> Thanks for subscribing."
    );


    input.value = "";

});

/* =========================================================
   FLASH SALE TIMER
========================================================= */

let dealEnd =
    Date.now() +
    (
        8 * 60 * 60 +
        42 * 60 +
        17
    ) * 1000;


function updateTimer(){

    let diff =
        Math.max(
            0,
            dealEnd - Date.now()
        );


    let total =
        Math.floor(diff / 1000);


    const hours =
        Math.floor(total / 3600);


    total %= 3600;


    const minutes =
        Math.floor(total / 60);


    const seconds =
        total % 60;


    document
    .getElementById("hours")
    .textContent =
        String(hours).padStart(2,"0");


    document
    .getElementById("minutes")
    .textContent =
        String(minutes).padStart(2,"0");


    document
    .getElementById("seconds")
    .textContent =
        String(seconds).padStart(2,"0");

}


setInterval(
    updateTimer,
    1000
);


updateTimer();

/* =========================================================
   INITIAL RENDER
========================================================= */

renderProducts();

</script>

</body>
</html>
