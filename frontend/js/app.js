/* ========================================
   LabelCheck - Mobile App JavaScript
   ======================================== */

// ========================================
// Data
// ========================================

const scannedProducts = [
    {
        id: 1,
        name: "Organic Honey",
        brand: "Nature's Best",
        status: "compliant",
        time: "2 hours ago",
        expiry: "Mar 2027",
        weight: "500g",
        fssai: "10019062000837",
        ingredients: "Raw Organic Honey",
        color: "#F59E0B"
    },
    {
        id: 2,
        name: "Instant Noodles",
        brand: "Quick Meal Co.",
        status: "non-compliant",
        time: "5 hours ago",
        expiry: "Dec 2026",
        weight: "70g",
        fssai: "12345678901234",
        issues: ["Missing allergen warning", "Excessive sodium content"],
        color: "#EF4444"
    },
    {
        id: 3,
        name: "Greek Yogurt",
        brand: "Dairy Fresh",
        status: "compliant",
        time: "Yesterday",
        expiry: "Jan 2027",
        weight: "200g",
        fssai: "98765432109876",
        ingredients: "Milk, Live Cultures",
        color: "#3B82F6"
    },
    {
        id: 4,
        name: "Protein Bar",
        brand: "FitFuel",
        status: "warning",
        time: "Yesterday",
        expiry: "Jun 2026",
        weight: "60g",
        fssai: "56789012345678",
        issues: ["Sugar content above recommended"],
        color: "#10B981"
    },
    {
        id: 5,
        name: "Green Tea",
        brand: "Tea Valley",
        status: "compliant",
        time: "2 days ago",
        expiry: "Sep 2027",
        weight: "100 bags",
        fssai: "45678901234567",
        ingredients: "100% Green Tea Leaves",
        color: "#059669"
    },
    {
        id: 6,
        name: "Packaged Juice",
        brand: "FruitPlus",
        status: "non-compliant",
        time: "3 days ago",
        expiry: "Nov 2026",
        weight: "1L",
        fssai: "34567890123456",
        issues: ["Artificial sweeteners not declared", "Misleading 'natural' claim"],
        color: "#F97316"
    }
];

// ========================================
// DOM Elements
// ========================================

const splashScreen = document.getElementById('splash-screen');
const appContainer = document.getElementById('app');
const feedList = document.getElementById('feedList');
const scanButton = document.getElementById('scanButton');
const scanModal = document.getElementById('scanModal');
const closeScanModal = document.getElementById('closeScanModal');
const productModal = document.getElementById('productModal');
const closeProductModal = document.getElementById('closeProductModal');
const productModalTitle = document.getElementById('productModalTitle');
const productDetailBody = document.getElementById('productDetailBody');
const navItems = document.querySelectorAll('.nav-item');
const quickCards = document.querySelectorAll('.quick-card');

// ========================================
// Splash Screen
// ========================================

function initSplash() {
    // Auto-dismiss splash after 2.5 seconds
    setTimeout(() => {
        splashScreen.classList.add('hidden');
        appContainer.classList.remove('hidden');
        appContainer.classList.add('visible');
    }, 2500);
}

// ========================================
// Feed Rendering
// ========================================

function getStatusIcon(status) {
    if (status === 'compliant') {
        return `<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
            <path d="M20 6L9 17l-5-5"/>
        </svg>`;
    } else if (status === 'non-compliant') {
        return `<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
            <line x1="18" y1="6" x2="6" y2="18"/>
            <line x1="6" y1="6" x2="18" y2="18"/>
        </svg>`;
    } else {
        return `<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
            <path d="M10.29 3.86L1.82 18a2 2 0 001.71 3h16.94a2 2 0 001.71-3L13.71 3.86a2 2 0 00-3.42 0z"/>
            <line x1="12" y1="9" x2="12" y2="13"/>
            <line x1="12" y1="17" x2="12.01" y2="17"/>
        </svg>`;
    }
}

function getStatusLabel(status) {
    switch (status) {
        case 'compliant': return 'Compliant';
        case 'non-compliant': return 'Non-Compliant';
        case 'warning': return 'Warning';
        default: return status;
    }
}

function getProductIcon(color) {
    return `<svg viewBox="0 0 24 24" fill="none" stroke="${color}" stroke-width="1.5" opacity="0.7">
        <rect x="4" y="4" width="16" height="16" rx="2"/>
        <rect x="7" y="7" width="3" height="10" rx="0.5" fill="${color}" opacity="0.3"/>
        <rect x="11" y="9" width="2" height="8" rx="0.5" fill="${color}" opacity="0.3"/>
        <rect x="14" y="7" width="3" height="10" rx="0.5" fill="${color}" opacity="0.3"/>
    </svg>`;
}

function renderFeed() {
    feedList.innerHTML = scannedProducts.map(product => `
        <div class="feed-card" data-product-id="${product.id}">
            <div class="feed-thumb" style="background: ${product.color}15;">
                ${getProductIcon(product.color)}
            </div>
            <div class="feed-info">
                <div class="feed-product-name">${product.name}</div>
                <div class="feed-brand">${product.brand}</div>
                <div class="feed-meta">
                    <span class="feed-time">${product.time}</span>
                    <span class="feed-status ${product.status}">
                        ${getStatusIcon(product.status)}
                        ${getStatusLabel(product.status)}
                    </span>
                </div>
            </div>
            <svg class="feed-arrow" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M9 18l6-6-6-6"/>
            </svg>
        </div>
    `).join('');

    // Add click handlers to feed cards
    document.querySelectorAll('.feed-card').forEach(card => {
        card.addEventListener('click', () => {
            const productId = parseInt(card.dataset.productId);
            openProductDetail(productId);
        });
    });
}

// ========================================
// Product Detail Modal
// ========================================

function openProductDetail(productId) {
    const product = scannedProducts.find(p => p.id === productId);
    if (!product) return;

    productModalTitle.textContent = product.name;
    
    const issueCount = product.issues ? product.issues.length : 0;
    const isCompliant = product.status === 'compliant';
    
    productDetailBody.innerHTML = `
        <div class="product-header-card">
            <div class="product-thumb-large" style="background: ${product.color}10;">
                <svg viewBox="0 0 24 24" fill="none" stroke="${product.color}" stroke-width="1.5">
                    <rect x="4" y="4" width="16" height="16" rx="2"/>
                    <rect x="7" y="7" width="3" height="10" rx="0.5" fill="${product.color}" opacity="0.3"/>
                    <rect x="11" y="9" width="2" height="8" rx="0.5" fill="${product.color}" opacity="0.3"/>
                    <rect x="14" y="7" width="3" height="10" rx="0.5" fill="${product.color}" opacity="0.3"/>
                </svg>
            </div>
            <div class="product-title-section">
                <h3>${product.name}</h3>
                <div class="product-brand-text">${product.brand}</div>
                <div class="compliance-badge-large ${product.status}">
                    ${getStatusIcon(product.status)}
                    ${getStatusLabel(product.status)}
                </div>
            </div>
        </div>

        <div class="detail-section">
            <div class="detail-section-title">Product Information</div>
            <div class="detail-grid">
                <div class="detail-item">
                    <div class="detail-item-label">Expiry Date</div>
                    <div class="detail-item-value">${product.expiry}</div>
                </div>
                <div class="detail-item">
                    <div class="detail-item-label">Net Weight</div>
                    <div class="detail-item-value">${product.weight}</div>
                </div>
                <div class="detail-item">
                    <div class="detail-item-label">FSSAI License</div>
                    <div class="detail-item-value">${product.fssai}</div>
                </div>
                <div class="detail-item">
                    <div class="detail-item-label">Scan Time</div>
                    <div class="detail-item-value">${product.time}</div>
                </div>
            </div>
        </div>

        ${product.ingredients ? `
        <div class="detail-section">
            <div class="detail-section-title">Ingredients</div>
            <div style="padding: 12px; background: var(--white); border: 1px solid var(--gray-100); border-radius: 12px;">
                <span style="font-size: 0.9375rem; color: var(--gray-700);">${product.ingredients}</span>
            </div>
        </div>
        ` : ''}

        <div class="detail-section">
            <div class="detail-section-title">Compliance Check</div>
            <div class="issues-list">
                <div class="issue-item">
                    <div class="issue-icon ${isCompliant ? 'success' : 'error'}">
                        ${isCompliant 
                            ? '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M20 6L9 17l-5-5"/></svg>'
                            : '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>'
                        }
                    </div>
                    <div class="issue-text">
                        <strong>${isCompliant ? 'All Labels Verified' : `${issueCount} Issue${issueCount > 1 ? 's' : ''} Found`}</strong>
                        <span>${isCompliant ? 'Product meets all regulatory requirements' : 'Review required for compliance'}</span>
                    </div>
                </div>
                ${product.issues ? product.issues.map(issue => `
                    <div class="issue-item">
                        <div class="issue-icon error">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
                                <path d="M10.29 3.86L1.82 18a2 2 0 001.71 3h16.94a2 2 0 001.71-3L13.71 3.86a2 2 0 00-3.42 0z"/>
                                <line x1="12" y1="9" x2="12" y2="13"/>
                                <line x1="12" y1="17" x2="12.01" y2="17"/>
                            </svg>
                        </div>
                        <div class="issue-text">
                            <strong>${issue}</strong>
                            <span>Required by FSSAI regulations</span>
                        </div>
                    </div>
                `).join('') : ''}
            </div>
        </div>
    `;

    productModal.classList.remove('hidden');
}

// ========================================
// Modal Handlers
// ========================================

function openScanModal() {
    scanModal.classList.remove('hidden');
    document.body.style.overflow = 'hidden';
}

function closeScanModalHandler() {
    scanModal.classList.add('hidden');
    document.body.style.overflow = '';
}

function closeProductModalHandler() {
    productModal.classList.add('hidden');
    document.body.style.overflow = '';
}

// ========================================
// Navigation
// ========================================

function setActiveNav(activeTab) {
    navItems.forEach(item => {
        item.classList.toggle('active', item.dataset.tab === activeTab);
    });
}

// ========================================
// Quick Card Handlers
// ========================================

function handleQuickCardClick(card) {
    const page = card.dataset.page;
    
    // Add visual feedback
    card.style.transform = 'scale(0.95)';
    setTimeout(() => {
        card.style.transform = '';
    }, 150);
    
    // For demo, show a toast or navigate
    console.log(`Navigating to: ${page}`);
}

// ========================================
// Touch Interactions
// ========================================

function addTouchFeedback() {
    const interactiveElements = document.querySelectorAll('button, .feed-card, .quick-card');
    
    interactiveElements.forEach(el => {
        el.addEventListener('touchstart', () => {
            el.style.opacity = '0.8';
        }, { passive: true });
        
        el.addEventListener('touchend', () => {
            el.style.opacity = '';
        }, { passive: true });
    });
}

// ========================================
// Pull to Refresh (simplified)
// ========================================

let touchStartY = 0;
let touchCurrentY = 0;

function initPullToRefresh() {
    const mainContent = document.querySelector('.main-content');
    
    mainContent.addEventListener('touchstart', (e) => {
        if (mainContent.scrollTop === 0) {
            touchStartY = e.touches[0].clientY;
        }
    }, { passive: true });
    
    mainContent.addEventListener('touchmove', (e) => {
        if (mainContent.scrollTop === 0) {
            touchCurrentY = e.touches[0].clientY;
            const diff = touchCurrentY - touchStartY;
            
            if (diff > 0 && diff < 100) {
                mainContent.style.transform = `translateY(${diff * 0.3}px)`;
            }
        }
    }, { passive: true });
    
    mainContent.addEventListener('touchend', () => {
        mainContent.style.transform = '';
    }, { passive: true });
}

// ========================================
// Scroll Effects
// ========================================

function initScrollEffects() {
    const topBar = document.querySelector('.top-bar');
    const mainContent = document.querySelector('.main-content');
    
    mainContent.addEventListener('scroll', () => {
        if (mainContent.scrollTop > 10) {
            topBar.style.boxShadow = '0 2px 8px rgba(0, 0, 0, 0.08)';
        } else {
            topBar.style.boxShadow = '0 1px 2px rgba(0, 0, 0, 0.05)';
        }
    }, { passive: true });
}

// ========================================
// Simulate Scan Action
// ========================================

function simulateScan() {
    openScanModal();
    
    // Simulate scanning after 3 seconds
    setTimeout(() => {
        closeScanModalHandler();
        
        // Show a random product result
        const randomProduct = scannedProducts[Math.floor(Math.random() * scannedProducts.length)];
        openProductDetail(randomProduct.id);
    }, 3000);
}

// ========================================
// Event Listeners
// ========================================

function initEventListeners() {
    // Scan button (main CTA)
    scanButton.addEventListener('click', simulateScan);
    
    // Scan nav button
    document.querySelector('.scan-nav').addEventListener('click', simulateScan);
    
    // Close scan modal
    closeScanModal.addEventListener('click', closeScanModalHandler);
    scanModal.querySelector('.modal-overlay').addEventListener('click', closeScanModalHandler);
    
    // Close product modal
    closeProductModal.addEventListener('click', closeProductModalHandler);
    productModal.querySelector('.modal-overlay').addEventListener('click', closeProductModalHandler);
    
    // Navigation
    navItems.forEach(item => {
        item.addEventListener('click', () => {
            setActiveNav(item.dataset.tab);
        });
    });
    
    // Quick cards
    quickCards.forEach(card => {
        card.addEventListener('click', () => handleQuickCardClick(card));
    });
    
    // Keyboard handlers
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape') {
            closeScanModalHandler();
            closeProductModalHandler();
        }
    });
}

// ========================================
// Initialize App
// ========================================

function init() {
    initSplash();
    renderFeed();
    initEventListeners();
    addTouchFeedback();
    initPullToRefresh();
    initScrollEffects();
}

// Start app when DOM is ready
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
} else {
    init();
}
