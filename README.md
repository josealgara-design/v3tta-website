# V3TTA Business Consulting Website

A modern, SEO-optimized single-page website for V3TTA - a business consulting firm specializing in helping entrepreneurs launch, acquire, and grow businesses.

## Features

- **SEO Optimized**: Complete meta tags, Open Graph, and Twitter Card support
- **Responsive Design**: Mobile-first approach with Tailwind CSS
- **Performance**: Single HTML file with embedded assets for fast loading
- **Accessibility**: Semantic HTML and ARIA labels
- **Modern Design**: Clean #F5F5F5 (light grey) and white color scheme with professional typography

## Deployment to GitHub Pages

### Option 1: Quick Deploy (Recommended)

1. **Create a new repository on GitHub**
   ```bash
   # On GitHub, click "New Repository"
   # Name it: v3tta-website (or your preferred name)
   # Make it Public
   # Don't initialize with README
   ```

2. **Initialize and push from your local machine**
   ```bash
   git init
   git add .
   git commit -m "Initial commit: V3TTA website"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/v3tta-website.git
   git push -u origin main
   ```

3. **Enable GitHub Pages**
   - Go to your repository on GitHub
   - Click "Settings" → "Pages"
   - Under "Source", select "main" branch
   - Click "Save"
   - Your site will be live at: `https://YOUR-USERNAME.github.io/v3tta-website/`

### Option 2: Custom Domain

1. Follow steps 1-3 from Option 1
2. In your repository Settings → Pages:
   - Enter your custom domain (e.g., `www.v3tta.com`)
   - Enable "Enforce HTTPS"
3. Add DNS records at your domain registrar:
   ```
   Type: CNAME
   Name: www
   Value: YOUR-USERNAME.github.io
   ```

## File Structure

```
v3tta-website/
├── index.html          # Main website file (SEO optimized)
├── README.md          # This file
└── .gitignore         # Git ignore file
```

## SEO Features

- **Title Tag**: Optimized for search engines
- **Meta Description**: Compelling 155-character description
- **Keywords**: Relevant business consulting keywords
- **Open Graph Tags**: Perfect social media sharing
- **Twitter Cards**: Enhanced Twitter sharing
- **Structured Data**: Schema.org markup ready
- **Canonical URLs**: Prevent duplicate content
- **Mobile Responsive**: Mobile-first indexing ready

## Customization

### Updating Content

Edit `index.html` to customize:
- Company name and tagline
- Service descriptions
- Contact information
- Call-to-action text

### Updating Colors

The site uses a #F5F5F5 (light grey) (#F5F5F5) and white color scheme. To change colors, search for:
- `bg-[#F5F5F5]` - Background color
- `text-gray-800` - Primary text color
- `text-gray-600` - Secondary text color

### Updating Icons

The site uses three embedded icons (base64):
1. Rocket ship - Launch Your Business
2. Magnifying glass - Acquire a Business  
3. Hand with chart - Grow Your Business

To replace icons, update the `src` attributes in the icon `<img>` tags.

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Performance

- Single HTML file: ~70KB
- No external dependencies
- Embedded images using base64
- Fast loading on all devices

## Analytics Integration

To add Google Analytics, insert before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## License

Copyright © 2024 V3TTA. All rights reserved.

## Support

For questions or support, contact: info@v3tta.com

---

**Built with ❤️ by Claude AI**
