I'll create an animated version of the NexusShop marketplace with a Telugu cinema heroes theme background and enhanced UI animations.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop — Telugu Heroes Edition</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <style>
    * { margin:0; padding:0; box-sizing:border-box; }
    :root {
      --bg: #0a0a0f;
      --surface: #14141e;
      --surface-2: #1e1e2e;
      --ink: #f0f0f5;
      --muted: #8888aa;
      --line: #2a2a3e;
      --gold: #f5c518;
      --gold-dark: #c99b00;
      --dark: #0a0a10;
      --danger: #ff5c5c;
      --shadow: 0 18px 50px rgba(0, 0, 0, .6);
      --radius: 24px;
      --hero-glow: rgba(245, 197, 24, 0.08);
    }
    html { scroll-behavior: smooth; }
    body {
      font-family: "DM Sans", sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.5;
      overflow-x: hidden;
    }
    button, input, select { font: inherit; }
    button { cursor: pointer; border:0; background: none; color: inherit; }
    a { text-decoration: none; color: inherit; }
    img { width:100%; display:block; object-fit:cover; }
    .container { width: min(1380px, calc(100% - 48px)); margin: auto; }

    /* Hero Background Animation - Telugu Heroes */
    .hero-bg {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
      overflow: hidden;
      background: radial-gradient(ellipse at 20% 50%, #1a0a2e, #0a0a0f 70%);
    }
    .hero-bg .hero-image {
      position: absolute;
      border-radius: 50%;
      opacity: 0.06;
      animation: floatHero 20s ease-in-out infinite alternate;
      filter: grayscale(0.3) sepia(0.2);
    }
    .hero-bg .hero-image:nth-child(1) {
      width: 500px;
      height: 500px;
      top: -100px;
      right: -100px;
      background: radial-gradient(circle, #f5c518, transparent 70%);
      animation-delay: 0s;
    }
    .hero-bg .hero-image:nth-child(2) {
      width: 400px;
      height: 400px;
      bottom: -50px;
      left: -50px;
      background: radial-gradient(circle, #ff6b6b, transparent 70%);
      animation-delay: -3s;
    }
    .hero-bg .hero-image:nth-child(3) {
      width: 300px;
      height: 300px;
      top: 40%;
      left: 30%;
      background: radial-gradient(circle, #4ecdc4, transparent 70%);
      animation-delay: -7s;
    }
    .hero-bg .hero-image:nth-child(4) {
      width: 350px;
      height: 350px;
      bottom: 20%;
      right: 15%;
      background: radial-gradient(circle, #ffd93d, transparent 70%);
      animation-delay: -12s;
    }
    .hero-bg .hero-image:nth-child(5) {
      width: 250px;
      height: 250px;
      top: 10%;
      left: 10%;
      background: radial-gradient(circle, #a29bfe, transparent 70%);
      animation-delay: -5s;
    }
    @keyframes floatHero {
      0% { transform: translate(0, 0) scale(1) rotate(0deg); }
      33% { transform: translate(30px, -20px) scale(1.1) rotate(5deg); }
      66% { transform: translate(-20px, 30px) scale(0.9) rotate(-3deg); }
      100% { transform: translate(15px, -10px) scale(1.05) rotate(2deg); }
    }

    /* Particle overlay */
    .particles {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
      pointer-events: none;
      overflow: hidden;
    }
    .particle {
      position: absolute;
      width: 3px;
      height: 3px;
      background: var(--gold);
      border-radius: 50%;
      opacity: 0.3;
      animation: particleFloat linear infinite;
    }
    @keyframes particleFloat {
      0% { transform: translateY(100vh) scale(0); opacity: 0; }
      10% { opacity: 0.3; }
      90% { opacity: 0.3; }
      100% { transform: translateY(-10vh) scale(1); opacity: 0; }
    }

    /* Announcement with Telugu flavor */
    .announcement {
      background: linear-gradient(135deg, #1a0a2e, #2a1a3e);
      color: var(--gold);
      text-align: center;
      padding: 9px 20px;
      font-size: 13px;
      border-bottom: 1px solid rgba(245, 197, 24, 0.15);
      position: relative;
      overflow: hidden;
    }
    .announcement::before {
      content: "✦";
      margin-right: 8px;
      animation: sparkle 1.5s ease-in-out infinite;
    }
    @keyframes sparkle {
      0%, 100% { opacity: 1; transform: scale(1); }
      50% { opacity: 0.3; transform: scale(0.7); }
    }
    .announcement strong { color: #fff; }

    /* Header - Glass effect */
    .header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(10, 10, 15, 0.85);
      backdrop-filter: blur(20px);
      border-bottom: 1px solid rgba(245, 197, 24, 0.08);
    }
    .header-inner {
      min-height: 76px;
      display: grid;
      grid-template-columns: auto 1fr auto;
      align-items: center;
      gap: 35px;
    }
    .logo {
      font-family: "Space Grotesk", sans-serif;
      font-size: 25px;
      font-weight: 700;
      letter-spacing: -1.2px;
      background: linear-gradient(135deg, var(--gold), #ffd700);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .logo span { -webkit-text-fill-color: var(--gold); }
    .nav { display: flex; justify-content: center; gap: 32px; }
    .nav a {
      font-size: 14px;
      font-weight: 600;
      color: var(--muted);
      position: relative;
      transition: .3s;
      padding: 4px 0;
    }
    .nav a:hover, .nav a.active {
      color: var(--gold);
      text-shadow: 0 0 20px rgba(245, 197, 24, 0.15);
    }
    .nav a.active:after {
      content: "";
      position: absolute;
      height: 2px;
      width: 20px;
      background: var(--gold);
      border-radius: 5px;
      bottom: -9px;
      left: 50%;
      transform: translateX(-50%);
      box-shadow: 0 0 20px rgba(245, 197, 24, 0.4);
    }
    .header-actions { display: flex; align-items: center; gap: 9px; }
    .icon-btn {
      width: 42px; height: 42px; border-radius: 50%;
      background: var(--surface); border: 1px solid var(--line);
      display: grid; place-items: center;
      color: var(--ink); position: relative;
      transition: all .3s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    .icon-btn:hover {
      background: var(--gold); color: var(--dark);
      transform: translateY(-3px) scale(1.05);
      box-shadow: 0 8px 30px rgba(245, 197, 24, 0.2);
      border-color: var(--gold);
    }
    .count {
      position: absolute; top: -4px; right: -3px;
      min-width: 18px; height: 18px; border-radius: 20px;
      background: var(--gold); color: var(--dark);
      font-size: 10px; font-weight: 800;
      display: grid; place-items: center;
      box-shadow: 0 0 15px rgba(245, 197, 24, 0.3);
    }
    .menu-btn { display: none; }

    /* Hero with Telugu cinema flair */
    .hero { padding: 34px 0 18px; }
    .hero-grid { display: grid; grid-template-columns: 1.6fr .75fr; gap: 18px; }
    .hero-main {
      min-height: 525px;
      background: linear-gradient(135deg, #1a0a2e, #2a1a3e);
      border-radius: 34px;
      padding: 50px;
      position: relative;
      overflow: hidden;
      border: 1px solid rgba(245, 197, 24, 0.1);
      transition: all .3s;
    }
    .hero-main:hover {
      transform: scale(1.005);
      border-color: rgba(245, 197, 24, 0.2);
      box-shadow: 0 0 60px rgba(245, 197, 24, 0.05);
    }
    .hero-main::before {
      content: "";
      position: absolute;
      inset: 0;
      background: radial-gradient(ellipse at 70% 50%, rgba(245, 197, 24, 0.05), transparent 70%);
      pointer-events: none;
    }
    .hero-copy { position: relative; z-index: 2; max-width: 560px; }
    .eyebrow {
      display: inline-flex; align-items: center; gap: 8px;
      background: rgba(245, 197, 24, 0.12);
      color: var(--gold);
      border-radius: 100px; padding: 8px 13px;
      font-size: 12px; font-weight: 700; text-transform: uppercase; letter-spacing: .08em;
      border: 1px solid rgba(245, 197, 24, 0.15);
      animation: float 4s ease-in-out infinite;
    }
    @keyframes float { 0%,100%{transform:translateY(0)} 50%{transform:translateY(-5px)} }
    .hero h1 {
      font-family: "Space Grotesk", sans-serif;
      font-size: clamp(44px, 5vw, 78px);
      line-height: .94; letter-spacing: -4px;
      margin: 28px 0 22px;
      animation: fadeUp .8s ease-out;
      background: linear-gradient(135deg, #fff, var(--gold));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    @keyframes fadeUp { from { opacity:0; transform:translateY(30px); } to { opacity:1; transform:translateY(0); } }
    .hero p { font-size: 17px; color: #aaaacc; max-width: 470px; }
    .primary-btn {
      margin-top: 30px; display: inline-flex; align-items: center; gap: 12px;
      padding: 14px 20px; background: var(--gold); color: var(--dark);
      border-radius: 100px; font-weight: 700;
      transition: all .3s cubic-bezier(0.34, 1.56, 0.64, 1);
      border: 1px solid transparent;
    }
    .primary-btn:hover {
      transform: translateY(-4px) scale(1.03);
      box-shadow: 0 14px 40px rgba(245, 197, 24, 0.3);
      background: #ffd700;
    }
    .hero-watch {
      position: absolute; width: 47%; max-width: 470px;
      right: 1%; bottom: -7%;
      transform: rotate(-8deg);
      filter: drop-shadow(0 25px 28px rgba(0, 0, 0, .5));
      animation: floatWatch 5s ease-in-out infinite;
      border-radius: 20px;
      opacity: 0.85;
    }
    @keyframes floatWatch { 0%,100%{transform:rotate(-8deg) translateY(0)} 50%{transform:rotate(-5deg) translateY(-8px)} }

    /* Hero side - Telugu hero themed */
    .hero-side { display: grid; grid-template-rows: 1fr 1fr; gap: 18px; }
    .promo {
      border-radius: 30px; padding: 32px; overflow: hidden;
      position: relative; min-height: 253px;
      transition: all .3s ease;
      border: 1px solid rgba(245, 197, 24, 0.08);
    }
    .promo:hover {
      transform: translateY(-4px) scale(1.01);
      box-shadow: 0 12px 40px rgba(0,0,0,0.3);
      border-color: rgba(245, 197, 24, 0.2);
    }
    .promo.dark {
      background: linear-gradient(135deg, #1a0a2e, #2a1a3e);
      color: white;
    }
    .promo.gray {
      background: linear-gradient(135deg, #1e1e2e, #2a2a3e);
      color: white;
    }
    .promo h2 {
      font-family: "Space Grotesk";
      font-size: 31px;
      line-height: 1.02;
      letter-spacing: -1.5px;
      max-width: 230px;
      background: linear-gradient(135deg, #fff, var(--gold));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .promo p { font-size: 13px; color: #8888aa; margin-top: 10px; max-width: 220px; }
    .promo.gray p { color: #8888aa; }
    .promo-link {
      display: inline-flex; gap: 8px; margin-top: 22px;
      font-weight: 700; font-size: 13px;
      color: var(--gold);
      transition: .3s;
    }
    .promo-link:hover { color: #ffd700; gap: 12px; }
    .promo img {
      position: absolute; width: 52%; right: -3%; bottom: -9%; height: 90%;
      mix-blend-mode: screen;
      opacity: 0.5;
      border-radius: 20px;
    }

    /* Services - Glowing */
    .services {
      display: grid; grid-template-columns: repeat(4,1fr);
      background: var(--surface); border: 1px solid var(--line);
      border-radius: 22px; margin: 18px 0 70px; overflow: hidden;
    }
    .service {
      display: flex; align-items: center; gap: 14px;
      padding: 22px 25px; border-right: 1px solid var(--line);
      transition: .3s;
    }
    .service:hover {
      background: rgba(245, 197, 24, 0.05);
      transform: translateY(-2px);
    }
    .service:last-child { border-right:0; }
    .service i {
      font-size: 19px;
      color: var(--gold);
      animation: pulseIcon 2s ease-in-out infinite;
    }
    @keyframes pulseIcon {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(1.1); }
    }
    .service b { display:block; font-size:13px; color: var(--ink); }
    .service span { display:block; color:var(--muted); font-size:11px; margin-top:2px; }

    /* Section Headers */
    .section { padding:0 0 76px; }
    .section-head { display:flex; align-items:end; justify-content:space-between; margin-bottom:25px; }
    .section-head h2 {
      font-family:"Space Grotesk";
      font-size:34px;
      letter-spacing:-1.8px;
      background: linear-gradient(135deg, #fff, var(--gold));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .section-head p { color:var(--muted); font-size:13px; margin-top:3px; }
    .view-all {
      font-size:13px; font-weight:700;
      border-bottom:1px solid var(--gold);
      padding-bottom:4px;
      transition:.3s;
      color: var(--gold);
    }
    .view-all:hover { color: #ffd700; border-color: #ffd700; }

    /* Categories - Gold glow */
    .category-grid { display:grid; grid-template-columns:repeat(6,1fr); gap:16px; }
    .category {
      background: var(--surface); border: 1px solid var(--line);
      border-radius: 22px; padding: 14px; text-align: center;
      transition: all .3s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    .category:hover, .category.selected {
      background: var(--gold);
      color: var(--dark);
      transform: translateY(-6px) scale(1.02);
      box-shadow: 0 14px 40px rgba(245, 197, 24, 0.2);
      border-color: var(--gold);
    }
    .category:hover small, .category.selected small { color: var(--dark); opacity: 0.7; }
    .category-img {
      aspect-ratio:1; border-radius:17px; overflow:hidden;
      background: var(--surface-2);
      border: 1px solid var(--line);
    }
    .category-img img { height:100%; transition:.5s; }
    .category:hover .category-img img, .category.selected .category-img img { transform:scale(1.08); }
    .category strong { display:block; font-size:13px; margin-top:12px; }
    .category small { color:var(--muted); font-size:11px; }

    /* Product Grid - Glowing cards */
    .product-grid {
      display: grid; grid-template-columns: repeat(4, 1fr); gap: 18px;
    }
    .product-card {
      background: var(--surface); border: 1px solid var(--line);
      border-radius: 25px; overflow: hidden;
      transition: all .4s cubic-bezier(0.34, 1.56, 0.64, 1);
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-10px) scale(1.02);
      box-shadow: 0 20px 60px rgba(0,0,0,.5), 0 0 40px rgba(245, 197, 24, 0.05);
      border-color: rgba(245, 197, 24, 0.2);
    }
    .product-image {
      height:290px; background: var(--surface-2);
      position:relative; overflow:hidden;
    }
    .product-image img { height:100%; transition:.6s ease; }
    .product-card:hover .product-image img { transform:scale(1.08); }
    .badge {
      position:absolute; left:13px; top:13px;
      background: var(--gold); color: var(--dark);
      padding:6px 9px; border-radius:8px;
      font-size:10px; font-weight:800; text-transform:uppercase;
      box-shadow: 0 0 20px rgba(245, 197, 24, 0.3);
    }
    .wish {
      position:absolute; right:13px; top:13px;
      width:36px; height:36px; border-radius:50%;
      background: rgba(20, 20, 30, .9);
      display:grid; place-items:center;
      transition: all .3s;
      border: 1px solid var(--line);
      color: var(--ink);
    }
    .wish.active {
      background: var(--gold);
      color: var(--dark);
      border-color: var(--gold);
    }
    .wish:hover { transform:scale(1.15); background: var(--gold); color: var(--dark); }
    .product-info { padding:17px; }
    .product-category {
      color: var(--gold);
      font-size:10px;
      text-transform:uppercase;
      letter-spacing:.1em;
      font-weight:700;
    }
    .product-name {
      font-family:"Space Grotesk";
      font-size:17px;
      margin:6px 0 8px;
      letter-spacing:-.5px;
    }
    .rating { font-size:11px; color: var(--gold); }
    .rating span { color:var(--muted); margin-left:4px; }
    .product-bottom { display:flex; align-items:center; justify-content:space-between; margin-top:15px; }
    .price { font-size:18px; font-weight:800; color: var(--gold); }
    .old { font-size:11px; color:#555; text-decoration:line-through; margin-left:5px; }
    .add {
      width:38px; height:38px; border-radius:50%;
      background: var(--gold); color: var(--dark);
      display:grid; place-items:center;
      transition: all .3s cubic-bezier(0.34, 1.56, 0.64, 1);
      border: none;
    }
    .add:hover {
      background: #ffd700;
      transform:scale(1.1) rotate(4deg);
      box-shadow: 0 8px 30px rgba(245, 197, 24, 0.3);
    }

    /* Flash Sale - Gold themed */
    .flash {
      background: linear-gradient(135deg, #1a0a2e, #2a1a3e);
      border: 1px solid rgba(245, 197, 24, 0.1);
      border-radius: 32px; padding: 42px;
      position: relative; overflow: hidden;
      margin-top: 40px;
    }
    .flash:before {
      content: "";
      width: 400px; height: 400px;
      background: var(--gold);
      position: absolute;
      border-radius: 50%;
      right: -200px; top: -200px;
      opacity: .06;
      animation: pulseGlow 8s ease-in-out infinite;
    }
    @keyframes pulseGlow { 0%,100%{transform:scale(1); opacity:.06} 50%{transform:scale(1.3); opacity:.1} }
    .flash-head { display:flex; align-items:center; justify-content:space-between; margin-bottom:25px; }
    .flash h2 {
      font-family:"Space Grotesk";
      font-size:34px;
      letter-spacing:-1.5px;
      background: linear-gradient(135deg, #fff, var(--gold));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .timer { display:flex; gap:7px; }
    .time {
      min-width:50px; text-align:center;
      background: rgba(20, 20, 30, .8);
      border: 1px solid rgba(245, 197, 24, 0.1);
      border-radius:10px; padding:8px 7px;
      transition:.3s;
    }
    .time:hover {
      background: rgba(245, 197, 24, 0.1);
      transform:translateY(-2px);
      border-color: var(--gold);
    }
    .time b { display:block; color:var(--gold); font-size:17px; }
    .time small { font-size:8px; color:var(--muted); text-transform:uppercase; }
    .flash-grid { display:grid; grid-template-columns:repeat(4,1fr); gap:15px; }
    .flash-product {
      background: rgba(20, 20, 30, .6);
      border:1px solid var(--line);
      border-radius:20px; overflow:hidden;
      transition:.4s;
    }
    .flash-product:hover {
      transform:translateY(-6px);
      border-color: var(--gold);
      box-shadow: 0 12px 40px rgba(0,0,0,.3);
    }
    .flash-product img { height:190px; opacity: 0.8; transition: .5s; }
    .flash-product:hover img { opacity: 1; transform: scale(1.05); }
    .flash-product-info { padding:14px; }
    .flash-product-info p { font-size:13px; font-weight:700; }
    .flash-price { color:var(--gold); font-weight:800; margin-top:5px; }

    /* Newsletter */
    .newsletter {
      background: linear-gradient(135deg, #1a0a2e, #2a1a3e);
      border: 1px solid rgba(245, 197, 24, 0.1);
      border-radius:32px;
      padding:50px; display:flex; align-items:center;
      justify-content:space-between; gap:30px;
      margin-top:40px;
    }
    .newsletter h2 {
      font-family:"Space Grotesk";
      font-size:38px; letter-spacing:-2px; line-height:1;
      background: linear-gradient(135deg, #fff, var(--gold));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .newsletter p { font-size:13px; margin-top:8px; color: var(--muted); }
    .news-form {
      display:flex; background: var(--surface);
      border: 1px solid var(--line);
      border-radius:100px;
      padding:5px; min-width:440px;
    }
    .news-form input {
      flex:1; border:0; outline:0;
      background:transparent;
      padding:0 16px; min-width:0; font-size:13px;
      color: var(--ink);
    }
    .news-form input::placeholder { color: var(--muted); }
    .news-form button {
      background: var(--gold); color: var(--dark);
      border-radius:100px;
      padding:12px 19px; font-weight:700; font-size:12px;
      transition:.3s;
    }
    .news-form button:hover {
      background: #ffd700;
      transform:scale(1.02);
      box-shadow: 0 8px 30px rgba(245, 197, 24, 0.3);
    }

    /* Footer */
    .footer {
      margin-top:70px;
      background: var(--dark);
      border-top: 1px solid rgba(245, 197, 24, 0.05);
      padding:55px 0 28px;
    }
    .footer-grid { display:grid; grid-template-columns:1.5fr repeat(3,1fr); gap:45px; }
    .footer-brand p { color:var(--muted); font-size:13px; max-width:290px; margin-top:14px; }
    .socials { display:flex; gap:8px; margin-top:20px; }
    .socials a {
      width:34px; height:34px; border-radius:50%;
      background: var(--surface);
      border: 1px solid var(--line);
      display:grid; place-items:center;
      font-size:12px; transition:.3s;
    }
    .socials a:hover {
      background: var(--gold);
      color: var(--dark);
      transform:translateY(-3px);
      box-shadow: 0 8px 25px rgba(245, 197, 24, 0.2);
    }
    .footer h4 {
      font-size:12px; text-transform:uppercase;
      letter-spacing:.1em; margin-bottom:15px;
      color: var(--gold);
    }
    .footer li {
      list-style:none; margin:9px 0;
      color: var(--muted); font-size:12px;
      transition: .3s;
    }
    .footer li a:hover { color: var(--gold); }
    .footer-bottom {
      border-top:1px solid rgba(255,255,255,0.05);
      margin-top:45px; padding-top:20px;
      display:flex; justify-content:space-between;
      color: var(--muted); font-size:11px;
    }

    /* Toast */
    .toast {
      position:fixed; right:22px; bottom:22px;
      background: var(--surface); color: var(--ink);
      padding:13px 17px; border-radius:13px;
      border: 1px solid var(--line);
      box-shadow:0 12px 35px rgba(0,0,0,.3);
      transform:translateY(100px); opacity:0;
      transition:.3s ease; z-index:3000; font-size:13px;
    }
    .toast.show { transform:translateY(0); opacity:1; }
    .toast strong { color: var(--gold); }

    /* Responsive */
    @media(max-width:1050px) {
      .header-inner { grid-template-columns:auto auto; justify-content:space-between; }
      .nav { display:none; }
      .menu-btn { display:grid; }
      .nav.mobile-open {
        display:flex; position:absolute; top:76px; left:0; right:0;
        padding:20px; background: var(--bg);
        border-bottom:1px solid var(--line);
        flex-direction:column; align-items:center; gap:16px;
      }
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
      .footer-grid { grid-template-columns:1fr; }
    }
  </style>
</head>
<body>

  <!-- Hero Background - Telugu Cinema Theme -->
  <div class="hero-bg">
    <div class="hero-image"></div>
    <div class="hero-image"></div>
    <div class="hero-image"></div>
    <div class="hero-image"></div>
    <div class="hero-image"></div>
  </div>

  <!-- Particles -->
  <div class="particles" id="particles"></div>

  <!-- Announcement -->
  <div class="announcement">
    <strong>🎬 Telugu Cinema Special!</strong> Free delivery on orders over ₹999
  </div>

  <!-- Header -->
  <header class="header">
    <
