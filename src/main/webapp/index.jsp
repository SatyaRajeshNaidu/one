```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>NexusShop - Modern E-Commerce</title>

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Manrope:wght@700;800&display=swap"
    rel="stylesheet"
  >

  <!-- Font Awesome -->
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
  />

  <style>
    :root {
      --bg: #f7f8fc;
      --surface: #ffffff;
      --text: #171923;
      --muted: #707585;
      --line: #e9ebf1;

      --primary: #6c4df6;
      --primary-dark: #5235d9;
      --accent: #ff5b7f;
      --success: #18a56f;

      --dark: #171923;
      --radius: 20px;

      --shadow: 0 14px 40px rgba(23, 25, 35, 0.08);

      --container: 1240px;
    }

    * {
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      margin: 0;
      font-family: Inter, system-ui, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.5;
    }

    button,
    input,
    select {
      font: inherit;
    }

    button {
      cursor: pointer;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    .container {
      width: min(var(--container), calc(100% - 40px));
      margin: auto;
    }

    /* ================= HEADER ================= */

    header {
      position: sticky;
      top: 0;
      z-index: 100;

      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(18px);

      border-bottom: 1px solid rgba(233, 235, 241, 0.9);
    }

    .header-inner {
      height: 76px;

      display: grid;
      grid-template-columns: auto 1fr auto;

      align-items: center;
      gap: 28px;
    }

    .brand {
      font-family: Manrope, sans-serif;
      font-size: 23px;
      font-weight: 800;

      letter-spacing: -0.7px;
    }

    .brand span {
      color: var(--primary);
    }

    .nav {
      justify-self: center;

      display: flex;
      gap: 8px;
    }

    .nav a {
      padding: 9px 13px;

      border-radius: 10px;

      font-size: 14px;
      font-weight: 600;

      color: #555a68;

      transition: 0.2s;
    }

    .nav a:hover,
    .nav a.active {
      background: #f0edff;
      color: var(--primary);
    }

    .header-right {
      display: flex;
      align-items: center;
      gap: 9px;
    }

    .search {
      display: flex;
      align-items: center;

      width: 250px;
      height: 42px;

      background: #f5f6fa;

      border: 1px solid transparent;

      border-radius: 12px;

      padding: 0 13px;

      gap: 9px;
    }

    .search:focus-within {
      background: #fff;
      border-color: #dcd8ff;

      box-shadow: 0 0 0 4px #f0edff;
    }

    .search i {
      color: #9095a3;
      font-size: 14px;
    }

    .search input {
      width: 100%;

      border: 0;
      outline: 0;

      background: transparent;

      font-size: 13px;
    }

    .icon-btn {
      width: 42px;
      height: 42px;

      border: 1px solid var(--line);

      background: #fff;

      border-radius: 12px;

      display: grid;
      place-items: center;

      color: #555a68;

      transition: 0.2s;
    }

    .icon-btn:hover {
      color: var(--primary);
      border-color: #d9d3ff;
    }

    .cart {
      position: relative;
    }

    .cart-count {
      position: absolute;

      right: -4px;
      top: -5px;

      min-width: 18px;
      height: 18px;

      border-radius: 99px;

      background: var(--accent);
      color: #fff;

      font-size: 10px;
      font-weight: 800;

      display: grid;
      place-items: center;

      border: 2px solid #fff;
    }

    .menu-btn {
      display: none;
    }

    /* ================= HERO ================= */

    .hero {
      padding: 34px 0 20px;
    }

    .hero-card {
      min-height: 455px;

      border-radius: 30px;

      overflow: hidden;

      position: relative;

      display: flex;
      align-items: center;

      padding: 65px;

      background:
        linear-gradient(
          90deg,
          rgba(15, 16, 28, 0.88) 0%,
          rgba(15, 16, 28, 0.63) 48%,
          rgba(15, 16, 28, 0.15) 100%
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
        center / cover;
    }

    .hero-copy {
      max-width: 610px;
      color: #fff;
    }

    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 7px;

      background: rgba(255, 255, 255, 0.13);

      border: 1px solid rgba(255, 255, 255, 0.18);

      padding: 7px 11px;

      border-radius: 99px;

      font-size: 12px;
      font-weight: 700;

      margin-bottom: 18px;
    }

    .hero h1 {
      font-family: Manrope, sans-serif;

      font-size: 54px;

      line-height: 1.04;

      letter-spacing: -2.4px;

      margin: 0 0 18px;
    }

    .hero p {
      max-width: 560px;

      color: rgba(255, 255, 255, 0.78);

      margin: 0 0 28px;

      font-size: 15px;
    }

    .hero-actions {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
    }

    .btn {
      border: 0;

      border-radius: 12px;

      padding: 12px 18px;

      font-weight: 700;

      display: inline-flex;
      align-items: center;
      justify-content: center;

      gap: 9px;

      transition: 0.2s;
    }

    .btn-primary {
      background: var(--primary);
      color: #fff;
    }

    .btn-primary:hover {
      background: var(--primary-dark);
      transform: translateY(-1px);
    }

    .btn-light {
      background: #fff;
      color: var(--text);
    }

    .btn-light:hover {
      transform: translateY(-1px);
    }

    /* ================= SECTIONS ================= */

    .section {
      padding: 58px 0 0;
    }

    .section-head {
      display: flex;

      align-items: end;
      justify-content: space-between;

      gap: 20px;

      margin-bottom: 22px;
    }

    .section-head h2 {
      font-family: Manrope, sans-serif;

      font-size: 28px;

      letter-spacing: -1px;

      margin: 0;
    }

    .section-head p {
      margin: 5px 0 0;

      color: var(--muted);

      font-size: 13px;
    }

    .view-all {
      font-size: 13px;

      color: var(--primary);

      font-weight: 700;
    }

    /* ================= CATEGORIES ================= */

    .categories {
      display: grid;

      grid-template-columns: repeat(6, 1fr);

      gap: 14px;
    }

    .cat {
      background: var(--surface);

      border: 1px solid var(--line);

      border-radius: 18px;

      padding: 20px 12px;

      text-align: center;

      transition: 0.2s;

      box-shadow: 0 5px 20px rgba(23, 25, 35, 0.025);
    }

    .cat:hover {
      transform: translateY(-4px);

      box-shadow: var(--shadow);

      border-color: #ddd8ff;
    }

    .cat-icon {
      width: 50px;
      height: 50px;

      margin: 0 auto 11px;

      border-radius: 15px;

      background: #f0edff;

      color: var(--primary);

      display: grid;
      place-items: center;

      font-size: 19px;
    }

    .cat h3 {
      font-size: 13px;

      margin: 0 0 4px;
    }

    .cat small {
      color: var(--muted);

      font-size: 11px;
    }

    /* ================= FILTERS ================= */

    .toolbar {
      display: flex;

      align-items: center;

      justify-content: space-between;

      margin-bottom: 18px;

      gap: 12px;
    }

    .filters {
      display: flex;

      gap: 7px;

      overflow-x: auto;
    }

    .filter {
      white-space: nowrap;

      border: 1px solid var(--line);

      background: #fff;

      border-radius: 99px;

      padding: 8px 13px;

      font-size: 12px;

      font-weight: 600;

      color: #666b79;
    }

    .filter.active,
    .filter:hover {
      background: #f0edff;

      border-color: #dcd6ff;

      color: var(--primary);
    }

    .sort {
      border: 1px solid var(--line);

      background: #fff;

      border-radius: 10px;

      padding: 9px 12px;

      color: #5c6170;

      font-size: 12px;
    }

    /* ================= PRODUCTS ================= */

    .products {
      display: grid;

      grid-template-columns: repeat(4, 1fr);

      gap: 18px;
    }

    .product {
      background: #fff;

      border: 1px solid var(--line);

      border-radius: 19px;

      overflow: hidden;

      position: relative;

      transition: 0.22s;

      box-shadow: 0 5px 20px rgba(23, 25, 35, 0.025);
    }

    .product:hover {
      transform: translateY(-5px);

      box-shadow: var(--shadow);
    }

    .product-image {
      height: 230px;

      background: #f4f5f8;

      position: relative;

      overflow: hidden;
    }

    .product-image img {
      width: 100%;
      height: 100%;

      object-fit: cover;

      display: block;

      transition: 0.35s;
    }

    .product:hover .product-image img {
      transform: scale(1.045);
    }

    .badge {
      position: absolute;

      left: 12px;
      top: 12px;

      background: #fff;

      padding: 6px 9px;

      border-radius: 8px;

      font-size: 10px;

      font-weight: 800;

      box-shadow: 0 5px 14px rgba(0, 0, 0, 0.08);
    }

    .badge.sale {
      background: #fff0f3;
      color: #e33f62;
    }

    .badge.new {
      background: #ebfff7;
      color: #11845a;
    }

    .wish {
      position: absolute;

      right: 12px;
      top: 12px;

      width: 34px;
      height: 34px;

      border: 0;

      background: rgba(255, 255, 255, 0.95);

      border-radius: 10px;

      color: #6c7180;
    }

    .wish.active {
      color: var(--accent);
    }

    .product-body {
      padding: 15px;
    }

    .product-category {
      font-size: 10px;

      text-transform: uppercase;

      letter-spacing: 0.7px;

      color: #969aa6;

      font-weight: 700;
    }

    .product h3 {
      font-size: 14px;

      margin: 6px 0 10px;

      white-space: nowrap;

      overflow: hidden;

      text-overflow: ellipsis;
    }

    .rating {
      font-size: 11px;

      color: #f6ad25;
    }

    .rating span {
      color: #969aa6;

      margin-left: 4px;
    }

    .price-line {
      display: flex;

      align-items: center;

      justify-content: space-between;

      gap: 10px;
    }

    .price {
      font-size: 17px;

      font-weight: 800;
    }

    .old {
      font-size: 11px;

      color: #a0a4ae;

      text-decoration: line-through;

      margin-left: 5px;

      font-weight: 500;
    }

    .add {
      width: 100%;

      margin-top: 13px;

      border: 0;

      background: var(--dark);

      color: #fff;

      border-radius: 10px;

      padding: 10px;

      font-size: 12px;

      font-weight: 700;
    }

    .add:hover {
      background: var(--primary);
    }

    /* ================= DEAL ================= */

    .deal {
      margin-top: 58px;

      border-radius: 25px;

      overflow: hidden;

      background: #171923;

      color: #fff;

      display: grid;

      grid-template-columns: 1fr 1fr;

      min-height: 360px;
    }

    .deal-image {
      background:
        url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85")
        center / cover;

      min-height: 360px;
    }

    .deal-content {
      padding: 45px;

      display: flex;

      flex-direction: column;

      justify-content: center;
    }

    .deal-label {
      color: #ff8ca5;

      font-size: 11px;

      font-weight: 800;

      text-transform: uppercase;

      letter-spacing: 1.4px;
    }

    .deal h2 {
      font-family: Manrope, sans-serif;

      font-size: 34px;

      letter-spacing: -1.3px;

      margin: 8px 0;
    }

    .deal p {
      color: #aeb2bf;

      font-size: 13px;
    }

    .timer {
      display: flex;

      gap: 8px;

      margin: 17px 0 20px;
    }

    .time {
      min-width: 62px;

      background: #242632;

      border: 1px solid #333644;

      border-radius: 11px;

      text-align: center;

      padding: 9px;
    }

    .time strong {
      font-size: 18px;
    }

    .time small {
      display: block;

      color: #9095a3;

      font-size: 9px;

      margin-top: 2px;
    }

    .deal-price {
      font-size: 25px;

      font-weight: 800;
    }

    .deal-price del {
      font-size: 13px;

      color: #8f94a3;

      margin-left: 7px;

      font-weight: 500;
    }

    .stock {
      font-size: 11px;

      color: #aeb2bf;
    }

    /* ================= REVIEWS ================= */

    .reviews {
      display: grid;

      grid-template-columns: repeat(3, 1fr);

      gap: 16px;
    }

    .review {
      background: #fff;

      border: 1px solid var(--line);

      border-radius: 18px;

      padding: 20px;
    }

    .review .rating {
      font-size: 12px;
    }

    .review p {
      font-size: 13px;

      color: #555a68;

      min-height: 62px;
    }

    .person {
      display: flex;

      align-items: center;

      gap: 10px;
    }

    .person img {
      width: 38px;
      height: 38px;

      border-radius: 50%;

      object-fit: cover;
    }

    .person strong {
      font-size: 12px;
    }

    .person small {
      display: block;

      color: #9a9eaa;

      font-size: 10px;
    }

    /* ================= NEWSLETTER ================= */

    .newsletter {
      margin-top: 58px;

      background: linear-gradient(
        135deg,
        #eeeaff,
        #f8f7ff
      );

      border: 1px solid #e1dcff;

      border-radius: 25px;

      padding: 42px;

      text-align: center;
    }

    .newsletter h2 {
      font-family: Manrope, sans-serif;

      margin: 0 0 7px;

      font-size: 27px;
    }

    .newsletter p {
      color: var(--muted);

      font-size: 13px;

      margin: 0 0 20px;
    }

    .newsletter form {
      display: flex;

      max-width: 470px;

      margin: auto;

      background: #fff;

      border: 1px solid var(--line);

      padding: 5px;

      border-radius: 13px;
    }

    .newsletter input {
      border: 0;

      outline: 0;

      flex: 1;

      padding: 10px 12px;

      min-width: 0;
    }

    .newsletter .btn {
      padding: 10px 16px;
    }

    /* ================= FOOTER ================= */

    footer {
      margin-top: 58px;

      background: #fff;

      border-top: 1px solid var(--line);

      padding: 40px 0 25px;
    }

    .footer-grid {
      display: grid;

      grid-template-columns: 2fr 1fr 1fr 1fr;

      gap: 35px;
    }

    .footer-brand {
      font-family: Manrope;

      font-weight: 800;

      font-size: 20px;
    }

    .footer h4 {
      font-size: 12px;

      margin: 0 0 12px;
    }

    .footer a,
    .footer p {
      font-size: 12px;

      color: #858a97;

      display: block;

      margin: 7px 0;
    }

    .socials {
      display: flex;

      gap: 7px;

      margin-top: 16px;
    }

    .socials a {
      width: 32px;
      height: 32px;

      border: 1px solid var(--line);

      border-radius: 9px;

      display: grid;

      place-items: center;

      color: #646978;
    }

    .copyright {
      text-align: center;

      border-top: 1px solid var(--line);

      margin-top: 30px;

      padding-top: 18px;

      color: #9a9eaa;

      font-size: 10px;
    }

    /* ================= TOAST ================= */

    .toast {
      position: fixed;

      right: 20px;
      bottom: 20px;

      background: #171923;

      color: #fff;

      border-radius: 12px;

      padding: 12px 15px;

      font-size: 12px;

      font-weight: 600;

      box-shadow: var(--shadow);

      transform: translateY(100px);

      opacity: 0;

      transition: 0.25s;

      z-index: 200;
    }

    .toast.show {
      transform: translateY(0);

      opacity: 1;
    }

    /* ================= RESPONSIVE ================= */

    @media (max-width: 1050px) {
      .nav {
        display: none;
      }

      .menu-btn {
        display: grid;
      }

      .header-inner {
        grid-template-columns: auto 1fr auto;
      }

      .header-right {
        justify-self: end;
      }

      .categories {
        grid-template-columns: repeat(3, 1fr);
      }

      .products {
        grid-template-columns: repeat(3, 1fr);
      }

      .hero-card {
        padding: 45px;
      }

      .hero h1 {
        font-size: 45px;
      }
    }

    @media (max-width: 760px) {
      .container {
        width: min(100% - 24px, var(--container));
      }

      .header-inner {
        height: 68px;

        gap: 9px;
      }

      .search {
        width: 150px;
      }

      .hero {
        padding-top: 15px;
      }

      .hero-card {
        min-height: 500px;

        padding: 28px;

        border-radius: 22px;

        background:
          linear-gradient(
            90deg,
            rgba(15, 16, 28, 0.9),
            rgba(15, 16, 28, 0.55)
          ),
          url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1200&q=80")
          center / cover;
      }

      .hero h1 {
        font-size: 37px;

        letter-spacing: -1.5px;
      }

      .hero p {
        font-size: 13px;
      }

      .products {
        grid-template-columns: repeat(2, 1fr);

        gap: 12px;
      }

      .product-image {
        height: 190px;
      }

      .deal {
        grid-template-columns: 1fr;
      }

      .deal-image {
        min-height: 220px;
      }

      .deal-content {
        padding: 28px;
      }

      .reviews {
        grid-template-columns: 1fr;
      }

      .review p {
        min-height: auto;
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }

      .footer-grid > div:first-child {
        grid-column: 1 / -1;
      }
    }

    @media (max-width: 480px) {
      .header-right .search {
        display: none;
      }

      .categories {
        grid-template-columns: repeat(2, 1fr);
      }

      .section {
        padding-top: 42px;
      }

      .section-head {
        display: block;
      }

      .view-all {
        display: inline-block;

        margin-top: 8px;
      }

      .toolbar {
        display: block;
      }

      .sort {
        margin-top: 10px;

        width: 100%;
      }

      .products {
        grid-template-columns: 1fr;
      }

      .product-image {
        height: 250px;
      }

      .hero h1 {
        font-size: 32px;
      }

      .newsletter {
        padding: 30px 18px;
      }

      .newsletter form {
        display: block;

        background: transparent;

        border: 0;
      }

      .newsletter input {
        width: 100%;

        border: 1px solid var(--line);

        border-radius: 10px;

        margin-bottom: 8px;
      }

      .newsletter .btn {
        width: 100%;
      }
    }
  </style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>
  <div class="container header-inner">

    <div style="display:flex;align-items:center;gap:9px">

      <button
        class="icon-btn menu-btn"
        id="menuBtn"
        aria-label="Open menu"
      >
        <i class="fa-solid fa-bars"></i>
      </button>

      <a class="brand" href="#">
        Nexus<span>Shop</span>
      </a>

    </div>

    <nav class="nav">
      <a class="active" href="#">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Trending</a>
      <a href="#deals">Deals</a>
      <a href="#about">About</a>
    </nav>

    <div class="header-right">

      <label class="search">

        <i class="fa-solid fa-magnifying-glass"></i>

        <input
          id="searchInput"
          type="search"
          placeholder="Search products..."
        />

      </label>

      <button
        class="icon-btn"
        aria-label="Account"
      >
        <i class="fa-regular fa-user"></i>
      </button>

      <button
        class="icon-btn"
        aria-label="Wishlist"
      >
        <i class="fa-regular fa-heart"></i>
      </button>

      <button
        class="icon-btn cart"
        id="cartBtn"
        aria-label="Cart"
      >
        <i class="fa-solid fa-bag-shopping"></i>

        <span
          class="cart-count"
          id="cartCount"
        >
          0
        </span>

      </button>

    </div>

  </div>

  <!-- Mobile Navigation -->

  <div
    id="mobileNav"
    style="display:none;background:#fff;border-top:1px solid var(--line)"
  >

    <div
      class="container"
      style="padding:10px 0 15px"
    >

      <a
        href="#"
        style="display:block;padding:9px;font-size:13px;font-weight:600"
      >
        Home
      </a>

      <a
        href="#categories"
        style="display:block;padding:9px;font-size:13px;font-weight:600"
      >
        Categories
      </a>

      <a
        href="#products"
        style="display:block;padding:9px;font-size:13px;font-weight:600"
      >
        Trending
      </a>

      <a
        href="#deals"
        style="display:block;padding:9px;font-size:13px;font-weight:600"
      >
        Deals
      </a>

    </div>

  </div>

</header>


<main>

<!-- ================= HERO ================= -->

<section class="hero">

  <div class="container">

    <div class="hero-card">

      <div class="hero-copy">

        <div class="eyebrow">
          <i class="fa-solid fa-sparkles"></i>
          New season is here
        </div>

        <h1>
          Premium picks.
          <br>
          Better everyday.
        </h1>

        <p>
          Discover curated fashion, technology and accessories
          with a cleaner shopping experience and exclusive seasonal offers.
        </p>

        <div class="hero-actions">

          <button
            class="btn btn-primary"
            id="shopNow"
          >
            Shop collection
            <i class="fa-solid fa-arrow-right"></i>
          </button>

          <button
            class="btn btn-light"
            id="exploreDeals"
          >
            View deals
          </button>

        </div>

      </div>

    </div>

  </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section
  class="section container"
  id="categories"
>

  <div class="section-head">

    <div>

      <h2>
        Shop by category
      </h2>

      <p>
        Find what you need faster.
      </p>

    </div>

    <a
      class="view-all"
      href="#products"
    >
      View all
      <i class="fa-solid fa-arrow-right"></i>
    </a>

  </div>

  <div
    class="categories"
    id="categoriesGrid"
  ></div>

</section>


<!-- ================= PRODUCTS ================= -->

<section
  class="section container"
  id="products"
>

  <div class="section-head">

    <div>

      <h2>
        Trending products
      </h2>

      <p>
        Popular picks selected for you.
      </p>

    </div>

  </div>

  <div class="toolbar">

    <div
      class="filters"
      id="filters"
    ></div>

    <select
      class="sort"
      id="sortSelect"
      aria-label="Sort products"
    >

      <option value="featured">
        Sort: Featured
      </option>

      <option value="low">
        Price: Low to high
      </option>

      <option value="high">
        Price: High to low
      </option>

      <option value="rating">
        Top rated
      </option>

    </select>

  </div>

  <div
    class="products"
    id="productsGrid"
  ></div>

</section>


<!-- ================= DEAL ================= -->

<section
  class="container"
  id="deals"
>

  <div class="deal">

    <div class="deal-image"></div>

    <div class="deal-content">

      <div class="deal-label">
        Limited-time offer
      </div>

      <h2>
        MacBook Air M2
      </h2>

      <p>
        Thin, light and powerful.
        Get M2 performance at a special seasonal price.
      </p>

      <div class="timer">

        <div class="time">
          <strong id="days">00</strong>
          <small>Days</small>
        </div>

        <div class="time">
          <strong id="hours">00</strong>
          <small>Hours</small>
        </div>

        <div class="time">
          <strong id="minutes">00</strong>
          <small>Minutes</small>
        </div>

        <div class="time">
          <strong id="seconds">00</strong>
          <small>Seconds</small>
        </div>

      </div>

      <div class="deal-price">
        $999
        <del>$1,199</del>
      </div>

      <div class="stock">
        Only 12 items left at this price.
      </div>

      <button
        class="btn btn-primary"
        id="buyDeal"
        style="width:max-content;margin-top:18px"
      >
        Buy now
        <i class="fa-solid fa-arrow-right"></i>
      </button>

    </div>

  </div>

</section>


<!-- ================= REVIEWS ================= -->

<section
  class="section container"
  id="about"
>

  <div class="section-head">

    <div>

      <h2>
        What shoppers say
      </h2>

      <p>
        Real feedback from our community.
      </p>

    </div>

  </div>

  <div class="reviews">

    <article class="review">

      <div class="rating">
        ★★★★★
      </div>

      <p>
        “Fast shipping and excellent customer support.
        The product exceeded my expectations!”
      </p>

      <div class="person">

        <img
          src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80"
          alt="Ava Martin"
        >

        <div>
          <strong>Ava Martin</strong>
          <small>Verified buyer</small>
        </div>

      </div>

    </article>


    <article class="review">

      <div class="rating">
        ★★★★★
      </div>

      <p>
        “Great selection and the checkout was smooth.
        Will definitely shop again.”
      </p>

      <div class="person">

        <img
          src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80"
          alt="Michael Lee"
        >

        <div>
          <strong>Michael Lee</strong>
          <small>Frequent buyer</small>
        </div>

      </div>

    </article>


    <article class="review">

      <div class="rating">
        ★★★★☆
      </div>

      <p>
        “The new layout makes it much easier to discover
        products and compare prices.”
      </p>

      <div class="person">

        <img
          src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80"
          alt="Sophia Kim"
        >

        <div>
          <strong>Sophia Kim</strong>
          <small>Verified buyer</small>
        </div>

      </div>

    </article>

  </div>

</section>


<!-- ================= NEWSLETTER ================= -->

<section class="container">

  <div class="newsletter">

    <h2>
      Get the good stuff first.
    </h2>

    <p>
      New arrivals, member-only deals and useful product drops.
      No spam.
    </p>

    <form id="newsletterForm">

      <input
        id="newsletterEmail"
        type="email"
        placeholder="Your email address"
        required
      >

      <button
        class="btn btn-primary"
        type="submit"
      >
        Subscribe
      </button>

    </form>

    <div
      id="newsletterMsg"
      style="display:none;font-size:12px;margin-top:10px"
    ></div>

  </div>

</section>

</main>


<!-- ================= FOOTER ================= -->

<footer>

  <div class="container footer-grid">

    <div>

      <div class="footer-brand">
        Nexus<span style="color:var(--primary)">Shop</span>
      </div>

      <p>
        A modern e-commerce demo built with
        HTML, CSS and JavaScript.
      </p>

      <div class="socials">

        <a href="#">
          <i class="fa-brands fa-facebook-f"></i>
        </a>

        <a href="#">
          <i class="fa-brands fa-x-twitter"></i>
        </a>

        <a href="#">
          <i class="fa-brands fa-instagram"></i>
        </a>

      </div>

    </div>


    <div class="footer">

      <h4>Shop</h4>

      <a href="#products">
        Trending
      </a>

      <a href="#deals">
        Deals
      </a>

      <a href="#categories">
        Categories
      </a>

    </div>


    <div class="footer">

      <h4>Company</h4>

      <a href="#about">
        About
      </a>

      <a href="#">
        Careers
      </a>

      <a href="#">
        Press
      </a>

    </div>


    <div class="footer">

      <h4>Support</h4>

      <a href="#">
        Help Center
      </a>

      <a href="#">
        Shipping & Returns
      </a>

      <a href="#">
        Contact
      </a>

    </div>

  </div>


  <div class="container copyright">

    ©
    <span id="year"></span>
    NexusShop.
    All rights reserved.

  </div>

</footer>


<div
  class="toast"
  id="toast"
></div>


<script>

/* ================= DATA ================= */

const CATEGORIES = [

  {
    id: "phones",
    name: "Smartphones",
    icon: "fa-mobile-screen-button"
  },

  {
    id: "laptops",
    name: "Laptops",
    icon: "fa-laptop"
  },

  {
    id: "clothing",
    name: "Clothing",
    icon: "fa-shirt"
  },

  {
    id: "gadgets",
    name: "Gadgets",
    icon: "fa-headphones"
  },

  {
    id: "footwear",
    name: "Footwear",
    icon: "fa-shoe-prints"
  },

  {
    id: "accessories",
    name: "Accessories",
    icon: "fa-watch"
  }

];


const PRODUCTS = [

  {
    id: 1,
    title: "iPhone 14 Pro Max",
    price: 1099,
    oldPrice: 1199,
    rating: 5,
    reviews: 128,
    badge: "New",
    img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",
    category: "phones"
  },

  {
    id: 2,
    title: 'MacBook Pro 14"',
    price: 1999,
    rating: 4,
    reviews: 86,
    img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",
    category: "laptops"
  },

  {
    id: 3,
    title: "Apple Watch Series 8",
    price: 349,
    oldPrice: 399,
    rating: 5,
    reviews: 214,
    badge: "-25%",
    img: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85",
    category: "accessories"
  },

  {
    id: 4,
    title: "Nike Air Max 270",
    price: 150,
    rating: 4,
    reviews: 53,
    img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85",
    category: "footwear"
  },

  {
    id: 5,
    title: "Sony A7 IV Camera",
    price: 2499,
    rating: 5,
    reviews: 42,
    img: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85",
    category: "gadgets"
  },

  {
    id: 6,
    title: "Chanel No. 5",
    price: 120,
    rating: 5,
    reviews: 189,
    img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",
    category: "accessories"
  },

  {
    id: 7,
    title: "Travel Backpack",
    price: 79,
    oldPrice: 99,
    rating: 4,
    reviews: 67,
    badge: "-20%",
    img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85",
    category: "accessories"
  },

  {
    id: 8,
    title: "Sony WH-1000XM5",
    price: 399,
    rating: 5,
    reviews: 156,
    img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85",
    category: "gadgets"
  }

];


/* ================= STATE ================= */

let cartCount = 0;

let wishlist = new Set();

let activeCategory = "all";


/* ================= ELEMENTS ================= */

const categoriesGrid =
  document.querySelector("#categoriesGrid");

const productsGrid =
  document.querySelector("#productsGrid");

const filters =
  document.querySelector("#filters");


/* ================= HELPERS ================= */

function escapeHtml(text) {

  return String(text).replace(
    /[&<>"']/g,
    function (s) {

      return {
        "&": "&amp;",
        "<": "&lt;",
        ">": "&gt;",
        '"': "&quot;",
        "'": "&#39;"

      }[s];

    }
  );

}


/* ================= CATEGORIES ================= */

function renderCategories() {

  categoriesGrid.innerHTML =
    CATEGORIES.map(category => {

      return `

        <button
          class="cat"
          data-cat="${category.id}"
        >

          <div class="cat-icon">

            <i
              class="fa-solid ${category.icon}"
            ></i>

          </div>

          <h3>
            ${category.name}
          </h3>

          <small>
            Explore collection
          </small>

        </button>

      `;

    }).join("");


  categoriesGrid
    .querySelectorAll(".cat")
    .forEach(button => {

      button.onclick = function () {

        activeCategory =
          button.dataset.cat;

        renderFilters();

        renderProducts();

        document
          .querySelector("#products")
          .scrollIntoView({
            behavior: "smooth"
          });

      };

    });

}


/* ================= FILTERS ================= */

function renderFilters() {

  filters.innerHTML = `

    <button
      class="filter ${
        activeCategory === "all"
          ? "active"
          : ""
      }"
      data-cat="all"
    >
      All products
    </button>

    ${
      CATEGORIES.map(category => {

        return `

          <button
            class="filter ${
              activeCategory === category.id
                ? "active"
                : ""
            }"
            data-cat="${category.id}"
          >
            ${category.name}
          </button>

        `;

      }).join("")
    }

  `;


  filters
    .querySelectorAll(".filter")
    .forEach(button => {

      button.onclick = function () {

        activeCategory =
          button.dataset.cat;

        renderFilters();

        renderProducts();

      };

    });

}


/* ================= PRODUCTS ================= */

function getProducts() {

  const query =
    document
      .querySelector("#searchInput")
      .value
      .trim()
      .toLowerCase();


  let list = PRODUCTS.filter(product => {

    const categoryMatch =
      activeCategory === "all" ||
      product.category === activeCategory;


    const searchMatch =
      !query ||
      product.title
        .toLowerCase()
        .includes(query) ||
      product.category
        .toLowerCase()
        .includes(query);


    return categoryMatch && searchMatch;

  });


  const sort =
    document.querySelector("#sortSelect").value;


  if (sort === "low") {

    list.sort(
      (a, b) => a.price - b.price
    );

  }


  if (sort === "high") {

    list.sort(
      (a, b) => b.price - a.price
    );

  }


  if (sort === "rating") {

    list.sort(
      (a, b) => b.rating - a.rating
    );

  }


  return list;

}


function renderProducts() {

  const list = getProducts();


  if (!list.length) {

    productsGrid.innerHTML = `

      <div
        style="
          grid-column:1/-1;
          text-align:center;
          padding:45px;
          color:var(--muted)
        "
      >

        No products found.
        Try another search.

      </div>

    `;

    return;

  }


  productsGrid.innerHTML =

    list.map(product => {

      return `

        <article class="product">

          <div class="product-image">

            <img
              src="${product.img}"
              alt="${escapeHtml(product.title)}"
            >


            ${
              product.badge
                ? `

                  <span
                    class="
                      badge
                      ${
                        product.badge.startsWith("-")
                          ? "sale"
                          : "new"
                      }
                    "
                  >
                    ${product.badge}
                  </span>

                `
                : ""
            }


            <button
              class="
                wish
                ${
                  wishlist.has(product.id)
                    ? "active"
                    : ""
                }
              "
              data-wish="${product.id}"
              aria-label="Wishlist"
            >

              <i
                class="
                  ${
                    wishlist.has(product.id)
                      ? "fa-solid"
                      : "fa-regular"
                  }
                  fa-heart
                "
              ></i>

            </button>

          </div>


          <div class="product-body">

            <div class="product-category">
              ${escapeHtml(product.category)}
            </div>

            <h3>
              ${escapeHtml(product.title)}
            </h3>


            <div class="rating">

              ${"★".repeat(product.rating)}

              ${"☆".repeat(5 - product.rating)}

              <span>
                (${product.reviews})
              </span>

            </div>


            <div class="price-line">

              <div class="price">

                $${product.price.toLocaleString()}

                ${
                  product.oldPrice
                    ? `
                      <span class="old">
                        $${product.oldPrice.toLocaleString()}
                      </span>
                    `
                    : ""
                }

              </div>

            </div>


            <button
              class="add"
              data-add="${product.id}"
            >

              <i class="fa-solid fa-bag-shopping"></i>

              Add to cart

            </button>

          </div>

        </article>

      `;

    }).join("");


  productsGrid
    .querySelectorAll("[data-add]")
    .forEach(button => {

      button.onclick = function () {

        addToCart(
          Number(button.dataset.add)
        );

      };

    });


  productsGrid
    .querySelectorAll("[data-wish]")
    .forEach(button => {

      button.onclick = function () {

        const id =
          Number(button.dataset.wish);


        if (wishlist.has(id)) {

          wishlist.delete(id);

        } else {

          wishlist.add(id);

        }


        renderProducts();


        showToast(
          wishlist.has(id)
            ? "Added to wishlist"
            : "Removed from wishlist"
        );

      };

    });

}


/* ================= CART ================= */

function addToCart(id) {

  const product =
    PRODUCTS.find(
      item => item.id === id
    );


  if (!product) {
    return;
  }


  cartCount++;

  document.querySelector(
    "#cartCount"
  ).textContent = cartCount;


  showToast(
    `${product.title} added to cart`
  );

}


/* ================= TOAST ================= */

function showToast(message) {

  const toast =
    document.querySelector("#toast");


  toast.textContent = message;

  toast.classList.add("show");


  clearTimeout(window.toastTimer);


  window.toastTimer =
    setTimeout(
      () => toast.classList.remove("show"),
      1800
    );

}


/* ================= SEARCH ================= */

document
  .querySelector("#searchInput")
  .addEventListener(
    "input",
    renderProducts
  );


/* ================= SORT ================= */

document
  .querySelector("#sortSelect")
  .addEventListener(
    "change",
    renderProducts
  );


/* ================= HERO BUTTONS ================= */

document
  .querySelector("#shopNow")
  .onclick = function () {

    document
      .querySelector("#products")
      .scrollIntoView({
        behavior: "smooth"
      });

  };


document
  .querySelector("#exploreDeals")
  .onclick = function () {

    document
      .querySelector("#deals")
      .scrollIntoView({
        behavior: "smooth"
      });

  };


/* ================= DEAL ================= */

document
  .querySelector("#buyDeal")
  .onclick = function () {

    cartCount++;

    document.querySelector(
      "#cartCount"
    ).textContent = cartCount;


    showToast(
      "MacBook Air M2 added to cart"
    );

  };


/* ================= CART ================= */

document
  .querySelector("#cartBtn")
  .onclick = function () {

    showToast(
      `You have ${cartCount} item${
        cartCount === 1
          ? ""
          : "s"
      } in your cart`
    );

  };


/* ================= MOBILE MENU ================= */

document
  .querySelector("#menuBtn")
  .onclick = function () {

    const menu =
      document.querySelector("#mobileNav");


    menu.style.display =
      menu.style.display === "none"
        ? "block"
        : "none";

  };


/* ================= NEWSLETTER ================= */

document
  .querySelector("#newsletterForm")
  .onsubmit = function (event) {

    event.preventDefault();


    const email =
      document
        .querySelector("#newsletterEmail")
        .value
        .trim();


    const message =
      document.querySelector(
        "#newsletterMsg"
      );


    message.style.display = "block";


    if (
      !email ||
      !email.includes("@")
    ) {

      message.textContent =
        "Please enter a valid email address.";

      message.style.color =
        "#d83d5e";

      return;

    }


    message.textContent =
      "Thanks! You are subscribed.";

    message.style.color =
      "var(--success)";


    event.target.reset();

  };


/* ================= COUNTDOWN ================= */

const target =
  new Date(
    Date.now() +
    24 * 60 * 60 * 1000 +
    36 * 60 * 1000
  );


function updateCountdown() {

  const difference =
    Math.max(
      0,
      target - Date.now()
    );


  const days =
    Math.floor(
      difference / 86400000
    );


  const hours =
    Math.floor(
      difference %
      86400000 /
      3600000
    );


  const minutes =
    Math.floor(
      difference %
      3600000 /
      60000
    );


  const seconds =
    Math.floor(
      difference %
      60000 /
      1000
    );


  document.querySelector(
    "#days"
  ).textContent =
    String(days).padStart(2, "0");


  document.querySelector(
    "#hours"
  ).textContent =
    String(hours).padStart(2, "0");


  document.querySelector(
    "#minutes"
  ).textContent =
    String(minutes).padStart(2, "0");


  document.querySelector(
    "#seconds"
  ).textContent =
    String(seconds).padStart(2, "0");

}


setInterval(
  updateCountdown,
  1000
);

updateCountdown();


/* ================= INITIALIZATION ================= */

renderCategories();

renderFilters();

renderProducts();


document.querySelector(
  "#year"
).textContent =
  new Date().getFullYear();

</script>

</body>
</html>
```
