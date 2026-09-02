<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>NexusShop — Modern Marketplace</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

  <link
    href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@600;700&display=swap"
    rel="stylesheet"
  >

  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
  >

  <style>
    :root {
      --bg: #f2f4f8;
      --white: #ffffff;
      --dark: #18202b;
      --text: #111827;
      --muted: #7b8494;
      --border: #e4e8ef;
      --orange: #ff5a36;
      --orange-dark: #df3f1e;
      --green: #14966b;
      --yellow: #f4b740;
      --radius: 18px;
      --shadow: 0 12px 35px rgba(17, 24, 39, 0.07);
      --max-width: 1280px;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      background: var(--bg);
      color: var(--text);
      font-family: "DM Sans", sans-serif;
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
      color: inherit;
      text-decoration: none;
    }

    .container {
      width: min(
        var(--max-width),
        calc(100% - 40px)
      );

      margin: auto;
    }

    /* =========================
       TOP BAR
    ========================= */

    .topbar {
      background: var(--dark);
      color: #cdd3dc;
      font-size: 11px;
    }

    .topbar-inner {
      min-height: 34px;

      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .topbar a {
      color: white;
      margin-left: 18px;
    }

    /* =========================
       HEADER
    ========================= */

    header {
      position: sticky;
      top: 0;
      z-index: 100;

      background: white;
      border-bottom: 1px solid var(--border);
    }

    .header {
      min-height: 76px;

      display: grid;
      grid-template-columns: auto 1fr auto;

      align-items: center;

      gap: 28px;
    }

    .logo {
      font-family: "Space Grotesk", sans-serif;

      font-size: 24px;
      font-weight: 700;

      letter-spacing: -1px;
    }

    .logo b {
      color: var(--orange);
    }

    .search {
      height: 46px;

      display: flex;
      align-items: center;

      gap: 12px;

      padding: 0 15px;

      background: #f4f6f9;

      border: 1px solid #edf0f4;

      border-radius: 12px;
    }

    .search i {
      color: #8a93a2;
    }

    .search input {
      width: 100%;

      border: 0;
      outline: 0;

      background: transparent;

      font-size: 13px;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .action {
      width: 42px;
      height: 42px;

      display: grid;
      place-items: center;

      position: relative;

      background: white;

      border: 1px solid var(--border);

      border-radius: 11px;

      color: #525c6b;
    }

    .action:hover {
      color: var(--orange);
      border-color: #ffc9bd;
    }

    .cart-count {
      position: absolute;

      right: -5px;
      top: -6px;

      width: 18px;
      height: 18px;

      display: grid;
      place-items: center;

      background: var(--orange);

      color: white;

      border: 2px solid white;

      border-radius: 50%;

      font-size: 9px;
      font-weight: 700;
    }

    .menu {
      display: none;
    }

    /* =========================
       PAGE
    ========================= */

    .page {
      display: grid;

      grid-template-columns: 220px 1fr;

      gap: 24px;

      padding: 24px 0 50px;
    }

    .content {
      min-width: 0;
    }

    /* =========================
       SIDEBAR
    ========================= */

    .sidebar {
      height: max-content;

      position: sticky;
      top: 100px;

      background: white;

      border: 1px solid var(--border);

      border-radius: 18px;

      padding: 18px 12px;
    }

    .side-title {
      padding: 5px 10px 12px;

      color: #929aaa;

      text-transform: uppercase;

      letter-spacing: 1px;

      font-size: 9px;
      font-weight: 700;
    }

    .side-link {
      width: 100%;

      display: flex;
      align-items: center;

      gap: 11px;

      padding: 11px 10px;

      margin-bottom: 2px;

      border: 0;
      border-radius: 10px;

      background: transparent;

      color: #606a79;

      font-size: 12px;

      text-align: left;
    }

    .side-link i {
      width: 17px;
      text-align: center;
    }

    .side-link:hover,
    .side-link.active {
      background: #fff1ed;
      color: var(--orange);

      font-weight: 700;
    }

    .side-divider {
      height: 1px;

      margin: 13px 5px;

      background: var(--border);
    }

    /* =========================
       HERO
    ========================= */

    .hero {
      min-height: 330px;

      display: flex;
      align-items: center;

      padding: 45px;

      position: relative;
      overflow: hidden;

      color: white;

      border-radius: 22px;

      background:
        linear-gradient(
          90deg,
          rgba(19, 26, 37, 0.96),
          rgba(19, 26, 37, 0.68),
          rgba(19, 26, 37, 0.15)
        ),
        url(
          "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1500&q=85"
        );

      background-size: cover;
      background-position: center;
    }

    .hero-copy {
      max-width: 520px;
    }

    .hero-tag {
      display: inline-flex;

      padding: 6px 10px;

      background: var(--orange);

      border-radius: 7px;

      color: white;

      font-size: 10px;
      font-weight: 700;

      text-transform: uppercase;

      letter-spacing: 0.8px;
    }

    .hero h1 {
      margin: 14px 0;

      font-family: "Space Grotesk", sans-serif;

      font-size: 47px;

      line-height: 1.03;

      letter-spacing: -2px;
    }

    .hero p {
      max-width: 460px;

      color: #c5cbd4;

      font-size: 13px;

      line-height: 1.7;
    }

    .hero-btn {
      margin-top: 12px;

      padding: 11px 16px;

      background: white;

      border: 0;

      border-radius: 10px;

      color: var(--dark);

      font-size: 12px;
      font-weight: 700;
    }

    .hero-btn:hover {
      transform: translateY(-1px);
    }

    /* =========================
       SECTION HEADER
    ========================= */

    .block {
      margin-top: 30px;
    }

    .block-head {
      display: flex;

      justify-content: space-between;
      align-items: end;

      margin-bottom: 14px;
    }

    .block-head h2 {
      font-family: "Space Grotesk", sans-serif;

      font-size: 22px;

      letter-spacing: -0.6px;
    }

    .block-head p {
      margin-top: 4px;

      color: var(--muted);

      font-size: 11px;
    }

    .link {
      color: var(--orange);

      font-size: 11px;
      font-weight: 700;
    }

    /* =========================
       CATEGORIES
    ========================= */

    .category-row {
      display: grid;

      grid-template-columns:
        repeat(6, 1fr);

      gap: 10px;
    }

    .category {
      padding: 14px 8px;

      background: white;

      border: 1px solid var(--border);

      border-radius: 15px;

      text-align: center;

      transition: 0.2s;
    }

    .category:hover {
      transform: translateY(-3px);

      border-color: #ffc9bd;

      box-shadow: var(--shadow);
    }

    .category-icon {
      width: 42px;
      height: 42px;

      display: grid;
      place-items: center;

      margin: auto auto 9px;

      background: #f5f7fa;

      border-radius: 12px;

      color: #596474;
    }

    .category:hover .category-icon {
      background: #fff1ed;
      color: var(--orange);
    }

    .category strong {
      display: block;

      font-size: 11px;
    }

    .category span {
      color: #9aa2af;

      font-size: 9px;
    }

    /* =========================
       TOOLBAR
    ========================= */

    .product-toolbar {
      display: flex;

      align-items: center;

      justify-content: space-between;

      margin: 30px 0 14px;
    }

    .tabs {
      display: flex;

      gap: 5px;

      overflow-x: auto;
    }

    .tab {
      white-space: nowrap;

      padding: 8px 11px;

      background: white;

      border: 1px solid var(--border);

      border-radius: 8px;

      color: #737c8b;

      font-size: 10px;
      font-weight: 600;
    }

    .tab:hover,
    .tab.active {
      background: var(--dark);

      border-color: var(--dark);

      color: white;
    }

    .sort {
      padding: 8px 10px;

      background: white;

      border: 1px solid var(--border);

      border-radius: 8px;

      color: #697383;

      font-size: 10px;
    }

    /* =========================
       PRODUCTS
    ========================= */

    .products {
      display: grid;

      grid-template-columns:
        repeat(4, 1fr);

      gap: 14px;
    }

    .product {
      position: relative;

      overflow: hidden;

      background: white;

      border: 1px solid var(--border);

      border-radius: 16px;

      transition: 0.22s;
    }

    .product:hover {
      transform: translateY(-4px);

      box-shadow: var(--shadow);
    }

    .product-img {
      height: 205px;

      position: relative;

      overflow: hidden;

      background: #f4f5f7;
    }

    .product-img img {
      width: 100%;
      height: 100%;

      display: block;

      object-fit: cover;

      transition: 0.35s;
    }

    .product:hover .product-img img {
      transform: scale(1.05);
    }

    .product-badge {
      position: absolute;

      left: 10px;
      top: 10px;

      padding: 5px 7px;

      background: white;

      border-radius: 7px;

      font-size: 9px;
      font-weight: 800;
    }

    .product-badge.sale {
      color: #e64a2e;
      background: #fff1ed;
    }

    .product-badge.new {
      color: var(--green);
      background: #eaf9f3;
    }

    .heart {
      width: 31px;
      height: 31px;

      position: absolute;

      right: 10px;
      top: 10px;

      display: grid;
      place-items: center;

      background: rgba(255,255,255,.95);

      border: 0;

      border-radius: 8px;

      color: #727b89;
    }

    .heart.active {
      color: var(--orange);
    }

    .product-body {
      padding: 13px;
    }

    .category-name {
      color: #9aa2ae;

      font-size: 9px;

      text-transform: uppercase;

      letter-spacing: 0.8px;

      font-weight: 700;
    }

    .product h3 {
      margin: 5px 0 8px;

      overflow: hidden;

      white-space: nowrap;

      text-overflow: ellipsis;

      font-size: 12px;
    }

    .rating {
      color: var(--yellow);

      font-size: 10px;
    }

    .rating span {
      margin-left: 3px;

      color: #9aa2ae;
    }

    .product-bottom {
      display: flex;

      align-items: end;

      justify-content: space-between;

      gap: 7px;

      margin-top: 9px;
    }

    .price {
      font-size: 16px;
      font-weight: 800;
    }

    .old {
      margin-left: 3px;

      color: #a5acb7;

      font-size: 9px;

      text-decoration: line-through;
    }

    .add {
      width: 34px;
      height: 34px;

      border: 0;

      border-radius: 9px;

      background: var(--dark);

      color: white;
    }

    .add:hover {
      background: var(--orange);
    }

    /* =========================
       SERVICE STRIP
    ========================= */

    .promo {
      display: grid;

      grid-template-columns:
        1.3fr 1fr 1fr;

      margin-top: 30px;

      overflow: hidden;

      background: white;

      border: 1px solid var(--border);

      border-radius: 17px;
    }

    .promo-item {
      min-height: 105px;

      display: flex;

      align-items: center;

      gap: 13px;

      padding: 20px;

      border-right: 1px solid var(--border);
    }

    .promo-item:last-child {
      border-right: 0;
    }

    .promo-icon {
      width: 40px;
      height: 40px;

      flex-shrink: 0;

      display: grid;
      place-items: center;

      background: #fff1ed;

      border-radius: 11px;

      color: var(--orange);
    }

    .promo strong {
      font-size: 11px;
    }

    .promo span {
      display: block;

      margin-top: 3px;

      color: var(--muted);

      font-size: 9px;
    }

    /* =========================
       FLASH DEAL
    ========================= */

    .flash {
      display: flex;

      align-items: center;

      justify-content: space-between;

      gap: 20px;

      margin-top: 30px;

      padding: 23px;

      background: var(--orange);

      color: white;

      border-radius: 18px;
    }

    .flash h2 {
      font-family: "Space Grotesk", sans-serif;

      font-size: 22px;
    }

    .flash p {
      margin-top: 4px;

      color: #ffe0d8;

      font-size: 10px;
    }

    .timer {
      display: flex;

      gap: 6px;
    }

    .time {
      min-width: 47px;

      padding: 7px;

      background: rgba(0,0,0,.15);

      border-radius: 8px;

      text-align: center;
    }

    .time b {
      display: block;

      font-size: 15px;
    }

    .time small {
      font-size: 8px;

      opacity: .75;
    }

    /* =========================
       FOOTER
    ========================= */

    footer {
      margin-top: 30px;

      padding: 35px 0 22px;

      background: white;

      border-top: 1px solid var(--border);
    }

    .footer-grid {
      display: grid;

      grid-template-columns:
        2fr 1fr 1fr 1fr;

      gap: 30px;
    }

    .footer-logo {
      font-family: "Space Grotesk", sans-serif;

      font-size: 19px;
      font-weight: 700;
    }

    .footer-logo b {
      color: var(--orange);
    }

    .footer p,
    .footer a {
      display: block;

      color: #89919f;

      font-size: 10px;

      line-height: 1.8;
    }

    .footer h4 {
      margin-bottom: 9px;

      font-size: 11px;
    }

    .socials {
      display: flex;

      gap: 6px;

      margin-top: 12px;
    }

    .socials a {
      width: 30px;
      height: 30px;

      display: grid;
      place-items: center;

      border: 1px solid var(--border);

      border-radius: 8px;
    }

    .copyright {
      margin-top: 25px;

      padding-top: 16px;

      border-top: 1px solid var(--border);

      text-align: center;

      color: #a1a8b2;

      font-size: 9px;
    }

    /* =========================
       TOAST
    ========================= */

    .toast {
      position: fixed;

      right: 20px;
      bottom: 20px;

      z-index: 200;

      padding: 11px 14px;

      background: var(--dark);

      border-radius: 10px;

      color: white;

      font-size: 11px;
      font-weight: 600;

      box-shadow: var(--shadow);

      transform: translateY(80px);

      opacity: 0;

      transition: .25s;
    }

    .toast.show {
      transform: translateY(0);

      opacity: 1;
    }

    /* =========================
       RESPONSIVE
    ========================= */

    @media(max-width:1100px) {

      .page {
        grid-template-columns: 190px 1fr;
      }

      .products {
        grid-template-columns:
          repeat(3, 1fr);
      }

      .category-row {
        grid-template-columns:
          repeat(3, 1fr);
      }
    }

    @media(max-width:800px) {

      .topbar {
        display: none;
      }

      .header {
        min-height: 68px;

        grid-template-columns:
          auto 1fr auto;

        gap: 10px;
      }

      .menu {
        display: grid;
      }

      .page {
        display: block;

        padding-top: 15px;
      }

      .sidebar {
        display: none;

        position: static;

        margin-bottom: 15px;
      }

      .sidebar.open {
        display: block;
      }

      .hero {
        min-height: 400px;

        padding: 30px;
      }

      .hero h1 {
        font-size: 38px;
      }

      .products {
        grid-template-columns:
          repeat(2, 1fr);
      }

      .promo {
        grid-template-columns: 1fr;
      }

      .promo-item {
        border-right: 0;

        border-bottom: 1px solid var(--border);
      }

      .promo-item:last-child {
        border-bottom: 0;
      }

      .flash {
        flex-direction: column;

        align-items: flex-start;
      }
    }

    @media(max-width:520px) {

      .container {
        width: calc(100% - 24px);
      }

      .header-actions
      .action:nth-child(1),
      .header-actions
      .action:nth-child(2) {
        display: none;
      }

      .hero {
        min-height: 430px;

        padding: 25px;
      }

      .hero h1 {
        font-size: 34px;
      }

      .category-row {
        grid-template-columns:
          repeat(2, 1fr);
      }

      .products {
        grid-template-columns: 1fr;
      }

      .product-img {
        height: 260px;
      }

      .product-toolbar {
        display: block;
      }

      .sort {
        width: 100%;

        margin-top: 9px;
      }

      .footer-grid {
        grid-template-columns:
          1fr 1fr;
      }

      .footer-grid > div:first-child {
        grid-column: 1 / -1;
      }
    }
  </style>
</head>

<body>

  <!-- =========================
       TOP BAR
  ========================== -->

  <div class="topbar">

    <div class="container topbar-inner">

      <span>
        <i class="fa-solid fa-truck-fast"></i>
        Free shipping on orders over $50
      </span>

      <div>
        <a href="#">Help</a>
        <a href="#">Track order</a>
        <a href="#">Sign in</a>
      </div>

    </div>

  </div>


  <!-- =========================
       HEADER
  ========================== -->

  <header>

    <div class="container header">

      <div style="display:flex;align-items:center;gap:8px">

        <button
          class="action menu"
          id="menuBtn"
          aria-label="Open menu"
        >
          <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
          Nexus<b>Shop</b>
        </a>

      </div>


      <label class="search">

        <i class="fa-solid fa-magnifying-glass"></i>

        <input
          id="searchInput"
          type="search"
          placeholder="Search products, brands and categories..."
        >

      </label>


      <div class="header-actions">

        <button class="action">
          <i class="fa-regular fa-user"></i>
        </button>

        <button class="action">
          <i class="fa-regular fa-heart"></i>
        </button>

        <button
          class="action"
          id="cartBtn"
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

  </header>


  <!-- =========================
       MAIN
  ========================== -->

  <main class="container page">


    <!-- =========================
         SIDEBAR
    ========================== -->

    <aside
      class="sidebar"
      id="sidebar"
    >

      <div class="side-title">
        Browse store
      </div>


      <button
        class="side-link active"
        data-cat="all"
      >
        <i class="fa-solid fa-border-all"></i>
        All products
      </button>


      <button
        class="side-link"
        data-cat="phones"
      >
        <i class="fa-solid fa-mobile-screen"></i>
        Smartphones
      </button>


      <button
        class="side-link"
        data-cat="laptops"
      >
        <i class="fa-solid fa-laptop"></i>
        Laptops
      </button>


      <button
        class="side-link"
        data-cat="clothing"
      >
        <i class="fa-solid fa-shirt"></i>
        Clothing
      </button>


      <button
        class="side-link"
        data-cat="gadgets"
      >
        <i class="fa-solid fa-headphones"></i>
        Gadgets
      </button>


      <button
        class="side-link"
        data-cat="footwear"
      >
        <i class="fa-solid fa-shoe-prints"></i>
        Footwear
      </button>


      <button
        class="side-link"
        data-cat="accessories"
      >
        <i class="fa-solid fa-watch"></i>
        Accessories
      </button>


      <div class="side-divider"></div>


      <div class="side-title">
        Quick links
      </div>


      <button
        class="side-link"
        id="dealsLink"
      >
        <i class="fa-solid fa-bolt"></i>
        Today's deals
      </button>


      <button class="side-link">
        <i class="fa-solid fa-star"></i>
        Best sellers
      </button>


      <button class="side-link">
        <i class="fa-solid fa-percent"></i>
        Offers
      </button>

    </aside>


    <!-- =========================
         CONTENT
    ========================== -->

    <section class="content">


      <!-- HERO -->

      <section class="hero">

        <div class="hero-copy">

          <span class="hero-tag">
            New Arrivals
          </span>

          <h1>
            Upgrade your
            everyday.
          </h1>

          <p>
            Discover smart technology, modern fashion
            and everyday essentials — all in one place.
          </p>

          <button
            class="hero-btn"
            id="shopBtn"
          >
            Explore collection
            <i class="fa-solid fa-arrow-right"></i>
          </button>

        </div>

      </section>


      <!-- CATEGORIES -->

      <section class="block">

        <div class="block-head">

          <div>
            <h2>
              Explore categories
            </h2>

            <p>
              Shop by what you're looking for.
            </p>
          </div>

          <a
            href="#products"
            class="link"
          >
            See all
            <i class="fa-solid fa-arrow-right"></i>
          </a>

        </div>


        <div
          class="category-row"
          id="categories"
        ></div>

      </section>


      <!-- PRODUCTS -->

      <section
        class="block"
        id="products"
      >

        <div class="block-head">

          <div>
            <h2>
              Popular right now
            </h2>

            <p>
              Top picks based on recent activity.
            </p>
          </div>

        </div>


        <div class="product-toolbar">

          <div
            class="tabs"
            id="tabs"
          ></div>


          <select
            class="sort"
            id="sort"
          >
            <option value="featured">
              Featured
            </option>

            <option value="low">
              Price: Low → High
            </option>

            <option value="high">
              Price: High → Low
            </option>

            <option value="rating">
              Top Rated
            </option>
          </select>

        </div>


        <div
          class="products"
          id="productGrid"
        ></div>

      </section>


      <!-- SERVICE STRIP -->

      <section class="promo">

        <div class="promo-item">

          <div class="promo-icon">
            <i class="fa-solid fa-truck-fast"></i>
          </div>

          <div>
            <strong>
              Fast delivery
            </strong>

            <span>
              Free shipping over $50
            </span>
          </div>

        </div>


        <div class="promo-item">

          <div class="promo-icon">
            <i class="fa-solid fa-shield-halved"></i>
          </div>

          <div>
            <strong>
              Secure payments
            </strong>

            <span>
              Protected checkout
            </span>
          </div>

        </div>


        <div class="promo-item">

          <div class="promo-icon">
            <i class="fa-solid fa-rotate-left"></i>
          </div>

          <div>
            <strong>
              Easy returns
            </strong>

            <span>
              30-day return policy
            </span>
          </div>

        </div>

      </section>


      <!-- FLASH DEAL -->

      <section
        class="flash"
        id="deals"
      >

        <div>

          <h2>
            Flash deal: MacBook Air M2
          </h2>

          <p>
            Save $200 before this offer ends.
          </p>

        </div>


        <div class="timer">

          <div class="time">
            <b id="days">00</b>
            <small>DAYS</small>
          </div>

          <div class="time">
            <b id="hours">00</b>
            <small>HRS</small>
          </div>

          <div class="time">
            <b id="minutes">00</b>
            <small>MIN</small>
          </div>

          <div class="time">
            <b id="seconds">00</b>
            <small>SEC</small>
          </div>

        </div>


        <button
          class="hero-btn"
          id="dealBtn"
        >
          Shop deal
        </button>

      </section>

    </section>

  </main>


  <!-- =========================
       FOOTER
  ========================== -->

  <footer>

    <div class="container footer-grid">

      <div>

        <div class="footer-logo">
          Nexus<b>Shop</b>
        </div>

        <p>
          A fresh marketplace experience built with
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
          Popular products
        </a>

        <a href="#deals">
          Deals
        </a>

        <a href="#">
          New arrivals
        </a>

      </div>


      <div class="footer">

        <h4>Company</h4>

        <a href="#">
          About us
        </a>

        <a href="#">
          Careers
        </a>

        <a href="#">
          Contact
        </a>

      </div>


      <div class="footer">

        <h4>Support</h4>

        <a href="#">
          Help center
        </a>

        <a href="#">
          Shipping
        </a>

        <a href="#">
          Returns
        </a>

      </div>

    </div>


    <div class="container copyright">

      ©
      <span id="year"></span>
      NexusShop. All rights reserved.

    </div>

  </footer>


  <!-- TOAST -->

  <div
    class="toast"
    id="toast"
  ></div>


  <script>

    /* =========================
       DATA
    ========================== */

    const categories = [
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


    const products = [

      {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "NEW",
        category: "phones",
        image:
          "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        category: "laptops",
        image:
          "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        category: "accessories",
        image:
          "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        category: "footwear",
        image:
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        category: "gadgets",
        image:
          "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 6,
        title: "Chanel No. 5",
        price: 120,
        rating: 5,
        reviews: 189,
        category: "accessories",
        image:
          "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "-20%",
        category: "accessories",
        image:
          "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        category: "gadgets",
        image:
          "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85"
      }

    ];


    /* =========================
       STATE
    ========================== */

    let activeCategory = "all";

    let cartCount = 0;

    let wishlist = new Set();


    /* =========================
       ELEMENTS
    ========================== */

    const categoryContainer =
      document.querySelector("#categories");

    const productGrid =
      document.querySelector("#productGrid");

    const tabs =
      document.querySelector("#tabs");

    const searchInput =
      document.querySelector("#searchInput");

    const sort =
      document.querySelector("#sort");


    /* =========================
       CATEGORY RENDER
    ========================== */

    function renderCategories() {

      categoryContainer.innerHTML =
        categories.map(category => `

          <button
            class="category"
            data-category="${category.id}"
          >

            <div class="category-icon">

              <i
                class="fa-solid ${category.icon}"
              ></i>

            </div>

            <strong>
              ${category.name}
            </strong>

            <span>
              Explore
            </span>

          </button>

        `).join("");


      categoryContainer
        .querySelectorAll(".category")
        .forEach(button => {

          button.onclick = () => {

            activeCategory =
              button.dataset.category;

            updateSideLinks();

            renderTabs();

            renderProducts();

            document
              .querySelector("#products")
              .scrollIntoView({
                behavior: "smooth"
              });

          };

        });

    }


    /* =========================
       TABS
    ========================== */

    function renderTabs() {

      tabs.innerHTML = `

        <button
          class="tab ${
            activeCategory === "all"
              ? "active"
              : ""
          }"
          data-category="all"
        >
          All
        </button>

        ${
          categories.map(category => `

            <button
              class="tab ${
                activeCategory === category.id
                  ? "active"
                  : ""
              }"
              data-category="${category.id}"
            >
              ${category.name}
            </button>

          `).join("")
        }

      `;


      tabs
        .querySelectorAll(".tab")
        .forEach(button => {

          button.onclick = () => {

            activeCategory =
              button.dataset.category;

            updateSideLinks();

            renderTabs();

            renderProducts();

          };

        });

    }


    /* =========================
       SIDEBAR
    ========================== */

    function updateSideLinks() {

      document
        .querySelectorAll(
          ".side-link[data-cat]"
        )
        .forEach(button => {

          button.classList.toggle(
            "active",
            button.dataset.cat ===
              activeCategory
          );

        });

    }


    document
      .querySelectorAll(
        ".side-link[data-cat]"
      )
      .forEach(button => {

        button.onclick = () => {

          activeCategory =
            button.dataset.cat;

          updateSideLinks();

          renderTabs();

          renderProducts();

        };

      });


    /* =========================
       GET PRODUCTS
    ========================== */

    function getProducts() {

      const query =
        searchInput.value
          .trim()
          .toLowerCase();


      let result =
        products.filter(product => {

          const categoryMatch =
            activeCategory === "all" ||
            product.category ===
              activeCategory;


          const searchMatch =
            !query ||
            product.title
              .toLowerCase()
              .includes(query) ||
            product.category
              .toLowerCase()
              .includes(query);


          return (
            categoryMatch &&
            searchMatch
          );

        });


      if (sort.value === "low") {

        result.sort(
          (a, b) =>
            a.price - b.price
        );

      }


      if (sort.value === "high") {

        result.sort(
          (a, b) =>
            b.price - a.price
        );

      }


      if (sort.value === "rating") {

        result.sort(
          (a, b) =>
            b.rating - a.rating
        );

      }


      return result;

    }


    /* =========================
       PRODUCT RENDER
    ========================== */

    function renderProducts() {

      const result =
        getProducts();


      if (!result.length) {

        productGrid.innerHTML = `

          <div
            style="
              grid-column:1/-1;
              text-align:center;
              padding:50px;
              color:var(--muted);
            "
          >
            No products found.
          </div>

        `;

        return;

      }


      productGrid.innerHTML =
        result.map(product => `

          <article class="product">

            <div class="product-img">

              <img
                src="${product.image}"
                alt="${product.title}"
              >


              ${
                product.badge
                  ? `

                    <span
                      class="
                        product-badge
                        ${
                          product.badge
                            .startsWith("-")
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
                  heart
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

              <div class="category-name">
                ${product.category}
              </div>


              <h3>
                ${product.title}
              </h3>


              <div class="rating">

                ${"★".repeat(product.rating)}

                ${"☆".repeat(
                  5 - product.rating
                )}

                <span>
                  (${product.reviews})
                </span>

              </div>


              <div class="product-bottom">

                <div>

                  <div class="price">

                    $
                    ${product.price.toLocaleString()}

                    ${
                      product.oldPrice
                        ? `

                          <span class="old">
                            $
                            ${product.oldPrice.toLocaleString()}
                          </span>

                        `
                        : ""
                    }

                  </div>

                </div>


                <button
                  class="add"
                  data-add="${product.id}"
                  aria-label="Add to cart"
                >
                  <i class="fa-solid fa-plus"></i>
                </button>

              </div>

            </div>

          </article>

        `).join("");


      productGrid
        .querySelectorAll("[data-add]")
        .forEach(button => {

          button.onclick = () => {

            addToCart(
              Number(
                button.dataset.add
              )
            );

          };

        });


      productGrid
        .querySelectorAll("[data-wish]")
        .forEach(button => {

          button.onclick = () => {

            const id =
              Number(
                button.dataset.wish
              );


            if (wishlist.has(id)) {

              wishlist.delete(id);

              showToast(
                "Removed from wishlist"
              );

            } else {

              wishlist.add(id);

              showToast(
                "Added to wishlist"
              );

            }


            renderProducts();

          };

        });

    }


    /* =========================
       CART
    ========================== */

    function addToCart(id) {

      const product =
        products.find(
          item => item.id === id
        );


      if (!product) {
        return;
      }


      cartCount++;


      document.querySelector(
        "#cartCount"
      ).textContent =
        cartCount;


      showToast(
        `${product.title} added to cart`
      );

    }


    document
      .querySelector("#cartBtn")
      .onclick = () => {

        showToast(
          cartCount === 0
            ? "Your cart is empty"
            : `${cartCount} item${
                cartCount === 1
                  ? ""
                  : "s"
              } in cart`
        );

      };


    /* =========================
       SEARCH
    ========================== */

    searchInput.addEventListener(
      "input",
      renderProducts
    );


    /* =========================
       SORT
    ========================== */

    sort.addEventListener(
      "change",
      renderProducts
    );


    /* =========================
       MOBILE MENU
    ========================== */

    document
      .querySelector("#menuBtn")
      .onclick = () => {

        document
          .querySelector("#sidebar")
          .classList.toggle("open");

      };


    /* =========================
       HERO BUTTON
    ========================== */

    document
      .querySelector("#shopBtn")
      .onclick = () => {

        document
          .querySelector("#products")
          .scrollIntoView({
            behavior: "smooth"
          });

      };


    /* =========================
       DEAL BUTTON
    ========================== */

    document
      .querySelector("#dealBtn")
      .onclick = () => {

        activeCategory = "laptops";

        updateSideLinks();

        renderTabs();

        renderProducts();

        document
          .querySelector("#products")
          .scrollIntoView({
            behavior: "smooth"
          });

      };


    document
      .querySelector("#dealsLink")
      .onclick = () => {

        document
          .querySelector("#deals")
          .scrollIntoView({
            behavior: "smooth"
          });

      };


    /* =========================
       TOAST
    ========================== */

    function showToast(message) {

      const toast =
        document.querySelector(
          "#toast"
        );


      toast.textContent =
        message;


      toast.classList.add(
        "show"
      );


      clearTimeout(
        window.toastTimer
      );


      window.toastTimer =
        setTimeout(() => {

          toast.classList.remove(
            "show"
          );

        }, 1800);

    }


    /* =========================
       COUNTDOWN
    ========================== */

    const dealTarget =
      new Date(
        Date.now() +
        18 * 60 * 60 * 1000 +
        42 * 60 * 1000
      );


    function countdown() {

      const remaining =
        Math.max(
          0,
          dealTarget - Date.now()
        );


      const days =
        Math.floor(
          remaining / 86400000
        );


      const hours =
        Math.floor(
          remaining % 86400000 /
          3600000
        );


      const minutes =
        Math.floor(
          remaining % 3600000 /
          60000
        );


      const seconds =
        Math.floor(
          remaining % 60000 /
          1000
        );


      document.querySelector(
        "#days"
      ).textContent =
        String(days).padStart(
          2,
          "0"
        );


      document.querySelector(
        "#hours"
      ).textContent =
        String(hours).padStart(
          2,
          "0"
        );


      document.querySelector(
        "#minutes"
      ).textContent =
        String(minutes).padStart(
          2,
          "0"
        );


      document.querySelector(
        "#seconds"
      ).textContent =
        String(seconds).padStart(
          2,
          "0"
        );

    }


    setInterval(
      countdown,
      1000
    );


    countdown();


    /* =========================
       INITIALIZE
    ========================== */

    renderCategories();

    renderTabs();

    renderProducts();

    updateSideLinks();

    document.querySelector(
      "#year"
    ).textContent =
      new Date().getFullYear();

  </script>

</body>
</html>
