<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop — Modern Marketplace</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <style>
    * { margin:0; padding:0; box-sizing:border-box; }
    :root {
      --bg: #f4f5f1;
      --surface: #ffffff;
      --surface-2: #e9ece5;
      --ink: #11130f;
      --muted: #747970;
      --line: #dfe3da;
      --lime: #c8f31d;
      --lime-dark: #9bc400;
      --dark: #10120e;
      --danger: #ff5c5c;
      --shadow: 0 18px 50px rgba(18, 24, 10, .08);
      --radius: 24px;
    }
    html { scroll-behavior: smooth; }
    body {
      font-family: "DM Sans", sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.5;
    }
    button, input, select { font: inherit; }
    button { cursor: pointer; border:0; }
    a { text-decoration: none; color: inherit; }
    img { width:100%; display:block; object-fit:cover; }
    .container { width: min(1380px, calc(100% - 48px)); margin: auto; }

    /* announcement */
    .announcement {
      background: var(--dark);
      color: white;
      text-align: center;
      padding: 9px 20px;
      font-size: 13px;
    }
    .announcement strong { color: var(--lime); }

    /* header */
    .header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(244, 245, 241, .92);
      backdrop-filter: blur(18px);
      border-bottom: 1px solid rgba(223, 227, 218, .8);
    }
    .header-inner {
      min-height: 76px;
      display: grid;
      grid-template-columns: auto 1fr auto;
      align-items: center;
      gap: 35px;
    }
    .logo { font-family: "Space Grotesk", sans-serif; font-size: 25px; font-weight: 700; letter-spacing: -1.2px; }
    .logo span { color: var(--lime-dark); }
    .nav { display: flex; justify-content: center; gap: 32px; }
    .nav a { font-size: 14px; font-weight: 600; color: #555b51; position: relative; transition: .2s; }
    .nav a:hover, .nav a.active { color: var(--ink); }
    .nav a.active:after {
      content: "";
      position: absolute;
      height: 3px;
      width: 16px;
      background: var(--lime-dark);
      border-radius: 5px;
      bottom: -9px;
      left: 50%;
      transform: translateX(-50%);
    }
    .header-actions { display: flex; align-items: center; gap: 9px; }
    .icon-btn {
      width: 42px; height: 42px; border-radius: 50%;
      background: var(--surface); border: 1px solid var(--line);
      display: grid; place-items: center;
      color: var(--ink); position: relative;
      transition: all .2s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    .icon-btn:hover {
      background: var(--dark); color: white;
      transform: translateY(-3px) scale(1.03);
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    }
    .count {
      position: absolute; top: -4px; right: -3px;
      min-width: 18px; height: 18px; border-radius: 20px;
      background: var(--lime); color: #111;
      font-size: 10px; font-weight: 800;
      display: grid; place-items: center;
    }
    .menu-btn { display: none; }

    /* hero */
    .hero { padding: 34px 0 18px; }
    .hero-grid { display: grid; grid-template-columns: 1.6fr .75fr; gap: 18px; }
    .hero-main {
      min-height: 525px;
      background: var(--lime);
      border-radius: 34px;
      padding: 50px;
      position: relative;
      overflow: hidden;
      transition: all .3s;
    }
    .hero-main:hover { transform: scale(1.005); }
    .hero-copy { position: relative; z-index: 2; max-width: 560px; }
    .eyebrow {
      display: inline-flex; align-items: center; gap: 8px;
      background: #11130f; color: white;
      border-radius: 100px; padding: 8px 13px;
      font-size: 12px; font-weight: 700; text-transform: uppercase; letter-spacing: .08em;
      animation: float 4s ease-in-out infinite;
    }
    @keyframes float { 0%,100%{transform:translateY(0)} 50%{transform:translateY(-5px)} }
    .hero h1 {
      font-family: "Space Grotesk", sans-serif;
      font-size: clamp(44px, 5vw, 78px);
      line-height: .94; letter-spacing: -4px;
      margin: 28px 0 22px;
      animation: fadeUp .8s ease-out;
    }
    @keyframes fadeUp { from { opacity:0; transform:translateY(30px); } to { opacity:1; transform:translateY(0); } }
    .hero p { font-size: 17px; color: #34382f; max-width: 470px; }
    .primary-btn {
      margin-top: 30px; display: inline-flex; align-items: center; gap: 12px;
      padding: 14px 20px; background: var(--dark); color: white;
      border-radius: 100px; font-weight: 700;
      transition: all .3s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    .primary-btn:hover { transform: translateY(-4px) scale(1.02); box-shadow: 0 14px 30px rgba(0,0,0,0.2); }
    .hero-watch {
      position: absolute; width: 47%; max-width: 470px;
      right: 1%; bottom: -7%;
      transform: rotate(-8deg);
      filter: drop-shadow(0 25px 28px rgba(0, 0, 0, .25));
      animation: floatWatch 5s ease-in-out infinite;
    }
    @keyframes floatWatch { 0%,100%{transform:rotate(-8deg) translateY(0)} 50%{transform:rotate(-5deg) translateY(-8px)} }

    .hero-side { display: grid; grid-template-rows: 1fr 1fr; gap: 18px; }
    .promo {
      border-radius: 30px; padding: 32px; overflow: hidden;
      position: relative; min-height: 253px;
      transition: all .3s ease;
    }
    .promo:hover { transform: translateY(-4px) scale(1.01); box-shadow: 0 12px 30px rgba(0,0,0,0.06); }
    .promo.dark { background: var(--dark); color: white; }
    .promo.gray { background: #dfe5d8; }
    .promo h2 { font-family: "Space Grotesk"; font-size: 31px; line-height: 1.02; letter-spacing: -1.5px; max-width: 230px; }
    .promo p { font-size: 13px; color: #aeb3aa; margin-top: 10px; max-width: 220px; }
    .promo.gray p { color: #5e645b; }
    .promo-link { display: inline-flex; gap: 8px; margin-top: 22px; font-weight: 700; font-size: 13px; }
    .promo img { position: absolute; width: 52%; right: -3%; bottom: -9%; height: 90%; mix-blend-mode: multiply; }
    .promo.dark img { mix-blend-mode: screen; opacity: .85; }

    /* services */
    .services {
      display: grid; grid-template-columns: repeat(4,1fr);
      background: var(--surface); border: 1px solid var(--line);
      border-radius: 22px; margin: 18px 0 70px; overflow: hidden;
    }
    .service {
      display: flex; align-items: center; gap: 14px;
      padding: 22px 25px; border-right: 1px solid var(--line);
      transition: .2s;
    }
    .service:hover { background: #f0f3eb; }
    .service:last-child { border-right:0; }
    .service i { font-size: 19px; }
    .service b { display:block; font-size:13px; }
    .service span { display:block; color:var(--muted); font-size:11px; margin-top:2px; }

    /* section */
    .section { padding:0 0 76px; }
    .section-head { display:flex; align-items:end; justify-content:space-between; margin-bottom:25px; }
    .section-head h2 { font-family:"Space Grotesk"; font-size:34px; letter-spacing:-1.8px; }
    .section-head p { color:var(--muted); font-size:13px; margin-top:3px; }
    .view-all { font-size:13px; font-weight:700; border-bottom:1px solid var(--ink); padding-bottom:4px; transition:.2s; }
    .view-all:hover { color:var(--lime-dark); border-color:var(--lime-dark); }

    /* categories */
    .category-grid { display:grid; grid-template-columns:repeat(6,1fr); gap:16px; }
    .category {
      background: var(--surface); border: 1px solid var(--line);
      border-radius: 22px; padding: 14px; text-align: center;
      transition: all .3s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    .category:hover, .category.selected {
      background: var(--dark); color: white;
      transform: translateY(-6px) scale(1.02);
      box-shadow: 0 14px 30px rgba(0,0,0,0.08);
    }
    .category-img { aspect-ratio:1; border-radius:17px; overflow:hidden; background:var(--surface-2); }
    .category-img img { height:100%; transition:.4s; }
    .category:hover .category-img img, .category.selected .category-img img { transform:scale(1.08); }
    .category strong { display:block; font-size:13px; margin-top:12px; }
    .category small { color:var(--muted); font-size:11px; }
    .category:hover small, .category.selected small { color:#adb2a8; }

    /* toolbar */
    .product-toolbar { display:flex; justify-content:space-between; align-items:center; margin-bottom:22px; }
    .filters { display:flex; gap:8px; flex-wrap:wrap; }
    .filter {
      padding:9px 14px; border:1px solid var(--line); background:var(--surface);
      border-radius:100px; font-size:12px; font-weight:700;
      transition: all .2s;
    }
    .filter.active, .filter:hover { background:var(--dark); color:white; transform:translateY(-2px); }
    .sort { border:1px solid var(--line); background:white; padding:10px 13px; border-radius:100px; font-size:12px; }

    /* products */
    .product-grid {
      display: grid; grid-template-columns: repeat(4, 1fr); gap: 18px;
    }
    .product-card {
      background: var(--surface); border: 1px solid var(--line);
      border-radius: 25px; overflow: hidden;
      transition: all .35s cubic-bezier(0.34, 1.56, 0.64, 1);
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-10px) scale(1.01);
      box-shadow: var(--shadow);
    }
    .product-image { height:290px; background:#eef0ea; position:relative; overflow:hidden; }
    .product-image img { height:100%; transition:.5s ease; }
    .product-card:hover .product-image img { transform:scale(1.08); }
    .badge {
      position:absolute; left:13px; top:13px;
      background:var(--lime); padding:6px 9px; border-radius:8px;
      font-size:10px; font-weight:800; text-transform:uppercase;
    }
    .wish {
      position:absolute; right:13px; top:13px;
      width:36px; height:36px; border-radius:50%;
      background:rgba(255,255,255,.92);
      display:grid; place-items:center;
      transition: all .25s;
      border: none;
    }
    .wish.active { background:var(--dark); color:var(--lime); }
    .wish:hover { transform:scale(1.15); }
    .product-info { padding:17px; }
    .product-category { color:var(--muted); font-size:10px; text-transform:uppercase; letter-spacing:.1em; font-weight:700; }
    .product-name { font-family:"Space Grotesk"; font-size:17px; margin:6px 0 8px; letter-spacing:-.5px; }
    .rating { font-size:11px; color:#9b6500; }
    .rating span { color:var(--muted); margin-left:4px; }
    .product-bottom { display:flex; align-items:center; justify-content:space-between; margin-top:15px; }
    .price { font-size:18px; font-weight:800; }
    .old { font-size:11px; color:#999; text-decoration:line-through; margin-left:5px; }
    .add {
      width:38px; height:38px; border-radius:50%;
      background:var(--dark); color:white;
      display:grid; place-items:center;
      transition: all .25s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    .add:hover { background:var(--lime); color:#111; transform:scale(1.1) rotate(4deg); }

    /* editorial */
    .editorial {
      display:grid; grid-template-columns:1fr 1fr;
      min-height:390px; border-radius:32px; overflow:hidden;
      background:#e0e6d8; margin-top:40px;
    }
    .editorial-copy { padding:55px; display:flex; flex-direction:column; justify-content:center; }
    .editorial-copy .eyebrow { align-self:flex-start; }
    .editorial h2 { font-family:"Space Grotesk"; font-size:clamp(38px,4vw,58px); line-height:.96; letter-spacing:-3px; margin:20px 0 14px; }
    .editorial p { max-width:450px; color:#5d6358; font-size:14px; }
    .editorial-img { min-height:390px; overflow:hidden; }
    .editorial-img img { height:100%; transition:.6s; }
    .editorial:hover .editorial-img img { transform:scale(1.04); }

    /* flash */
    .flash {
      background: var(--dark); color: white;
      border-radius: 32px; padding: 42px;
      position: relative; overflow: hidden;
      margin-top: 40px;
    }
    .flash:before {
      content: "";
      width: 350px; height: 350px;
      background: var(--lime);
      position: absolute; border-radius: 50%;
      right: -150px; top: -180px;
      opacity: .13;
      animation: pulseGlow 6s ease-in-out infinite;
    }
    @keyframes pulseGlow { 0%,100%{transform:scale(1); opacity:.13} 50%{transform:scale(1.2); opacity:.2} }
    .flash-head { display:flex; align-items:center; justify-content:space-between; margin-bottom:25px; }
    .flash h2 { font-family:"Space Grotesk"; font-size:34px; letter-spacing:-1.5px; }
    .timer { display:flex; gap:7px; }
    .time {
      min-width:50px; text-align:center;
      background:#252a21; border-radius:10px; padding:8px 7px;
      transition:.2s;
    }
    .time:hover { background:#2f342b; transform:translateY(-2px); }
    .time b { display:block; color:var(--lime); font-size:17px; }
    .time small { font-size:8px; color:#9da398; text-transform:uppercase; }
    .flash-grid { display:grid; grid-template-columns:repeat(4,1fr); gap:15px; }
    .flash-product {
      background:#191c17; border:1px solid #2c3128;
      border-radius:20px; overflow:hidden;
      transition:.3s;
    }
    .flash-product:hover { transform:translateY(-6px); border-color:var(--lime); }
    .flash-product img { height:190px; }
    .flash-product-info { padding:14px; }
    .flash-product-info p { font-size:13px; font-weight:700; }
    .flash-price { color:var(--lime); font-weight:800; margin-top:5px; }

    /* newsletter */
    .newsletter {
      background: var(--lime); border-radius:32px;
      padding:50px; display:flex; align-items:center;
      justify-content:space-between; gap:30px;
      margin-top:40px;
    }
    .newsletter h2 { font-family:"Space Grotesk"; font-size:38px; letter-spacing:-2px; line-height:1; }
    .newsletter p { font-size:13px; margin-top:8px; color:#41473a; }
    .news-form {
      display:flex; background:white; border-radius:100px;
      padding:5px; min-width:440px;
    }
    .news-form input { flex:1; border:0; outline:0; background:transparent; padding:0 16px; min-width:0; font-size:13px; }
    .news-form button {
      background:var(--dark); color:white; border-radius:100px;
      padding:12px 19px; font-weight:700; font-size:12px;
      transition:.2s;
    }
    .news-form button:hover { background:var(--lime-dark); color:var(--dark); transform:scale(1.02); }

    /* footer */
    .footer { margin-top:70px; background:var(--dark); color:white; padding:55px 0 28px; }
    .footer-grid { display:grid; grid-template-columns:1.5fr repeat(3,1fr); gap:45px; }
    .footer-brand p { color:#92988d; font-size:13px; max-width:290px; margin-top:14px; }
    .socials { display:flex; gap:8px; margin-top:20px; }
    .socials a {
      width:34px; height:34px; border-radius:50%;
      background:#20241e; display:grid; place-items:center;
      font-size:12px; transition:.2s;
    }
    .socials a:hover { background:var(--lime); color:var(--dark); transform:translateY(-3px); }
    .footer h4 { font-size:12px; text-transform:uppercase; letter-spacing:.1em; margin-bottom:15px; }
    .footer li { list-style:none; margin:9px 0; color:#969c91; font-size:12px; }
    .footer li a:hover { color:var(--lime); }
    .footer-bottom { border-top:1px solid #292d27; margin-top:45px; padding-top:20px; display:flex; justify-content:space-between; color:#747b70; font-size:11px; }

    /* search overlay */
    .search-overlay {
      position:fixed; inset:0; background:rgba(8,10,7,.7);
      backdrop-filter:blur(10px); z-index:2000;
      display:none; align-items:flex-start; justify-content:center;
      padding-top:120px;
    }
    .search-overlay.open { display:flex; }
    .search-box {
      width:min(700px, calc(100% - 35px)); background:white;
      border-radius:25px; padding:10px; display:flex; align-items:center;
    }
    .search-box i { margin:0 12px; color:#777; }
    .search-box input { flex:1; border:0; outline:0; font-size:18px; padding:15px; }
    .close-search { width:42px; height:42px; border-radius:50%; background:var(--dark); color:white; }

    /* toast */
    .toast {
      position:fixed; right:22px; bottom:22px;
      background:var(--dark); color:white;
      padding:13px 17px; border-radius:13px;
      box-shadow:0 12px 35px rgba(0,0,0,.2);
      transform:translateY(100px); opacity:0;
      transition:.3s ease; z-index:3000; font-size:13px;
    }
    .toast.show { transform:translateY(0); opacity:1; }
    .toast strong { color:var(--lime); }

    /* responsive */
    @media(max-width:1050px) {
      .header-inner { grid-template-columns:auto auto; justify-content:space-between; }
      .nav { display:none; }
      .menu-btn { display:grid; }
      .nav.mobile-open { display:flex; position:absolute; top:76px; left:0; right:0; padding:20px; background:var(--bg); border-bottom:1px solid var(--line); flex-direction:column; align-items:center; gap:16px; }
      .hero-grid { grid-template-columns:1fr; }
      .hero-side { grid-template-columns:1fr 1fr; grid-template-rows:auto; }
      .category-grid { grid-template-columns:repeat(3,1fr); }
      .product-grid { grid-template-columns:repeat(3,1fr); }
      .flash-grid { grid-template-columns:repeat(2,1fr); }
      .footer-grid { grid-template-columns:1.5fr repeat(2,1fr); }
    }
    @media(max-width:720px) {
      .container { width:min(100% - 28px, 1380px); }
      .hero-main { min-height:560px; padding:28px; }
      .hero h1 { font-size:48px; letter-spacing:-2.5px; }
      .hero-watch { width:75%; right:-10%; bottom:0; }
      .hero-side { grid-template-columns:1fr; }
      .promo { min-height:220px; }
      .services { grid-template-columns:1fr 1fr; margin-bottom:50px; }
      .service:nth-child(2) { border-right:0; }
      .service:nth-child(-n+2) { border-bottom:1px solid var(--line); }
      .category-grid { grid-template-columns:repeat(2,1fr); }
      .product-grid { grid-template-columns:repeat(2,1fr); gap:12px; }
      .product-image { height:210px; }
      .editorial { grid-template-columns:1fr; }
      .editorial-copy { padding:35px; }
      .editorial-img { min-height:280px; }
      .flash { padding:25px; }
      .flash-head { align-items:flex-start; gap:20px; flex-direction:column; }
      .newsletter { padding:35px 25px; display:block; }
      .newsletter h2 { font-size:32px; }
      .news-form { min-width:0; margin-top:22px; }
      .footer-grid { grid-template-columns:1fr 1fr; gap:30px; }
      .footer-brand { grid-column:1/-1; }
      .footer-bottom { flex-direction:column; gap:8px; }
    }
    @media(max-width:430px) {
      .header-inner { min-height:68px; }
      .header-actions .icon-btn:nth-child(2) { display:none; }
      .hero-main { min-height:530px; }
      .hero h1 { font-size:42px; }
      .services { grid-template-columns:1fr; }
      .service { border-right:0!important; border-bottom:1px solid var(--line)!important; }
      .service:last-child { border-bottom:0!important; }
      .category-grid { gap:9px; }
      .category { padding:9px; }
      .product-grid { grid-template-columns:1fr 1fr; }
      .product-image { height:180px; }
      .product-info { padding:12px; }
      .price { font-size:15px; }
      .add { width:34px; height:34px; }
      .sort { display:none; }
      .footer-grid { grid-template-columns:1fr; }
    }
  </style>
</head>
<body>

  <!-- announcement -->
  <div class="announcement">
    New season essentials are here —
    <strong>free delivery on orders over $50</strong>
  </div>

  <!-- header -->
  <header class="header">
    <div class="container header-inner">
      <a href="#" class="logo">nexus<span>shop</span>.</a>
      <nav class="nav" id="nav">
        <a href="#home" class="active">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Shop</a>
        <a href="#deals">Deals</a>
        <a href="#about">About</a>
      </nav>
      <div class="header-actions">
        <button class="icon-btn" id="searchBtn" aria-label="Search">
          <i class="fa-solid fa-magnifying-glass"></i>
        </button>
        <button class="icon-btn" id="wishHeader" aria-label="Wishlist">
          <i class="fa-regular fa-heart"></i>
          <span class="count" id="wishCount">0</span>
        </button>
        <button class="icon-btn" aria-label="Shopping cart" id="cartBtn">
          <i class="fa-solid fa-bag-shopping"></i>
          <span class="count" id="cartCount">0</span>
        </button>
        <button class="icon-btn menu-btn" id="menuBtn" aria-label="Menu">
          <i class="fa-solid fa-bars"></i>
        </button>
      </div>
    </div>
  </header>

  <!-- main -->
  <main id="home">

    <!-- hero -->
    <section class="hero container">
      <div class="hero-grid">
        <article class="hero-main">
          <div class="hero-copy">
            <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> New collection</span>
            <h1>Better things.<br>Better living.</h1>
            <p>Discover thoughtfully selected tech, fashion and everyday essentials designed to fit your world.</p>
            <a href="#products" class="primary-btn">Shop collection <i class="fa-solid fa-arrow-right"></i></a>
          </div>
          <img class="hero-watch" src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=900&q=85" alt="Smart watch">
        </article>
        <div class="hero-side">
          <article class="promo dark">
            <h2>Audio that moves with you.</h2>
            <p>Premium wireless sound, without the premium attitude.</p>
            <a href="#products" class="promo-link">Explore audio <i class="fa-solid fa-arrow-up-right-from-square"></i></a>
            <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80" alt="Headphones">
          </article>
          <article class="promo gray">
            <h2>Carry it your way.</h2>
            <p>Clean silhouettes made for everyday adventures.</p>
            <a href="#products" class="promo-link">Shop bags <i class="fa-solid fa-arrow-right"></i></a>
            <img src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80" alt="Backpack">
          </article>
        </div>
      </div>

      <!-- services -->
      <div class="services">
        <div class="service"><i class="fa-solid fa-truck-fast"></i><div><b>Fast delivery</b><span>Across the country</span></div></div>
        <div class="service"><i class="fa-solid fa-shield-halved"></i><div><b>Secure checkout</b><span>Protected payments</span></div></div>
        <div class="service"><i class="fa-solid fa-rotate-left"></i><div><b>Easy returns</b><span>30-day return window</span></div></div>
        <div class="service"><i class="fa-solid fa-headset"></i><div><b>Human support</b><span>We're here to help</span></div></div>
      </div>
    </section>

    <!-- categories -->
    <section class="section container" id="categories">
      <div class="section-head">
        <div><h2>Shop by mood</h2><p>Find your next favorite thing.</p></div>
        <a class="view-all" href="#products">View all</a>
      </div>
      <div class="category-grid" id="categoryGrid">
        <button class="category selected" data-category="all"><div class="category-img"><img src="https://images.unsplash.com/photo-1550745165-9bc0b252726f?auto=format&fit=crop&w=500&q=80" alt="All"></div><strong>Everything</strong><small>120+ items</small></button>
        <button class="category" data-category="technology"><div class="category-img"><img src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=500&q=80" alt="Tech"></div><strong>Technology</strong><small>32 items</small></button>
        <button class="category" data-category="fashion"><div class="category-img"><img src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=500&q=80" alt="Fashion"></div><strong>Fashion</strong><small>28 items</small></button>
        <button class="category" data-category="audio"><div class="category-img"><img src="https://images.unsplash.com/photo-1484704849700-f032a568e944?auto=format&fit=crop&w=500&q=80" alt="Audio"></div><strong>Audio</strong><small>19 items</small></button>
        <button class="category" data-category="travel"><div class="category-img"><img src="https://images.unsplash.com/photo-1551632811-561732d1e306?auto=format&fit=crop&w=500&q=80" alt="Travel"></div><strong>Travel</strong><small>16 items</small></button>
        <button class="category" data-category="accessories"><div class="category-img"><img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80" alt="Accessories"></div><strong>Accessories</strong><small>24 items</small></button>
      </div>
    </section>

    <!-- products -->
    <section class="section container" id="products">
      <div class="section-head"><div><h2>New arrivals</h2><p>Fresh drops, just for you.</p></div><a class="view-all" href="#">See all</a></div>
      <div class="product-toolbar">
        <div class="filters"><button class="filter active" data-filter="all">All</button><button class="filter" data-filter="tech">Tech</button><button class="filter" data-filter="fashion">Fashion</button><button class="filter" data-filter="audio">Audio</button></div>
        <select class="sort"><option>Sort by: New</option><option>Price: low → high</option><option>Price: high → low</option></select>
      </div>
      <div class="product-grid" id="productGrid"></div>
    </section>

    <!-- editorial -->
    <div class="container"><div class="editorial"><div class="editorial-copy"><span class="eyebrow"><i class="fa-regular fa-compass"></i> Curated</span><h2>Made to last,<br>designed to love.</h2><p>Every piece in our collection is chosen for quality, craft, and a little bit of soul.</p><a href="#products" class="primary-btn" style="margin-top:20px;">Explore the edit</a></div><div class="editorial-img
