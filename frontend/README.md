# LabelCheck — Scan • Eat • Safe

A modern, responsive **frontend prototype** for a Food Safety & Nutrition Scanner app.
Built with **React** (via CDN), **HTML**, **CSS** and **JavaScript** — no build step, no configuration.

## Features

- **Brand splash screen** with glowing logo + "SCAN • EAT • SAFE" animation
- **Home dashboard** with a glowing "Scan Your Food" hero, scan + upload buttons, grade legend
- **Categories**: Beverages / Solid Items / Grocery → 9 subcategories → ~42 sample products
- **Product cards** with nutrition facts, grade badge (A–E), "View Details" & "Scan Variant"
- **Product detail page**: nutrition bars, ingredient chips, food-safety analysis, "Why this grade?"
- **Simulated scanner** (Capture/Upload) with animated scan frame and "Product Detected!" result
- **Search bar** that live-filters products
- **Profile page** (dummy data) with saved products & settings
- **Bottom mobile navigation** (Home / Scan / Categories / Profile)
- **Fully responsive** — 360px phones → 1366px+ desktops (cards go 1 → 2 → 3+ columns)

## How to run

1. Make sure you are on the internet (CDN loads React + Babel once).
2. Double-click `index.html` — open it in **Chrome, Edge or Firefox**.
3. Resize the window to see the responsive behavior; use DevTools "device toolbar" (Ctrl+Shift+M) for phone preview.

> No Node.js, npm or server required. Hash-based routing works straight from the file.

## Project structure (all inside `index.html`)

| Section | Purpose |
|---------|---------|
| `<style>` | Full design system: palette, shadows, cards, animations, responsive |
| `PRODUCTS` | Centralized sample dataset (easy to swap for a backend later) |
| `computeGrade()` | Simple prototype scoring logic (comments explain how to replace with a real algorithm) |
| ICONS | Reusable inline SVG icons + brand logo |
| COMPONENTS | Header, SearchBar, CategoryCard, ProductCard, GradeBadge, ProductImage, etc. |
| PAGES | Home, Categories, Category, List, Product details, Scanner, Profile |
| APP | Splash → routing, bottom navigation wiring |

## Data note

All nutritional values are **sample/demo numbers** (per 100 g/ml) and are **NOT official**
government or brand data. They exist so the interface, grading and flows can be demonstrated.

## Replacing sample data with real data

- Product info lives in the `PRODUCTS` array (see `function P(...)`).
- Image URLs: put real image URLs in the `IMAGE_MAP` object (keyed by product id) — the
  `ProductImage` component will use them automatically and fall back to gradient initials.
- Grading: replace the body of `computeGrade()` with your own nutrition-scoring algorithm
  (e.g. the UK FSA front-of-pack model) — the UI, badges and explanations react automatically.

## Connecting a real scanner later

The scanner page is intentionally simulated. To go live, point the "Capture"/"Upload Image"
handlers to:
- a **barcode scanner** library (`@zxing/browser`),
- an **OCR / image recognition** API, and/or
- a **food database API** that returns product nutrition JSON, then map it into the same
  product fields used by the components.