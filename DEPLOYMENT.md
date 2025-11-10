# Quick Deployment Guide for V3TTA Website

## Prerequisites
- Git installed on your computer
- GitHub account created
- Terminal/Command Prompt access

## Step-by-Step Deployment

### 1. Create GitHub Repository

1. Go to [GitHub.com](https://github.com) and log in
2. Click the "+" icon (top right) → "New repository"
3. Repository settings:
   - **Name**: `v3tta-website` (or your choice)
   - **Description**: "V3TTA Business Consulting Website"
   - **Visibility**: Public
   - **Do NOT check**: "Add a README file"
4. Click "Create repository"

### 2. Upload Files to GitHub

**Option A: Using Git Command Line**

Open terminal/command prompt in the folder containing your files:

```bash
# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial commit: V3TTA website launch"

# Add GitHub as remote (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/v3tta-website.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Option B: Using GitHub Desktop**

1. Download and install [GitHub Desktop](https://desktop.github.com/)
2. Open GitHub Desktop
3. Click "File" → "Add Local Repository"
4. Select your website folder
5. Click "Publish repository"

**Option C: Upload via Web Interface**

1. On your GitHub repository page, click "uploading an existing file"
2. Drag and drop: `index.html`, `README.md`, `.gitignore`
3. Click "Commit changes"

### 3. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **"Settings"** (top menu)
3. Click **"Pages"** (left sidebar)
4. Under **"Source"**:
   - Branch: Select `main`
   - Folder: Select `/ (root)`
5. Click **"Save"**
6. Wait 1-2 minutes
7. Refresh the page - you'll see: "Your site is live at..."

Your website is now live at:
```
https://YOUR-USERNAME.github.io/v3tta-website/
```

## Custom Domain Setup (Optional)

### If you own v3tta.com:

1. **In GitHub Pages Settings**:
   - Enter your domain: `www.v3tta.com`
   - Check "Enforce HTTPS"
   - Save

2. **In Your Domain Registrar** (GoDaddy, Namecheap, etc.):
   
   Add these DNS records:
   
   **CNAME Record:**
   ```
   Type:  CNAME
   Name:  www
   Value: YOUR-USERNAME.github.io
   TTL:   3600
   ```
   
   **A Records** (for root domain):
   ```
   Type:  A
   Name:  @
   Value: 185.199.108.153
   
   Type:  A
   Name:  @
   Value: 185.199.109.153
   
   Type:  A
   Name:  @
   Value: 185.199.110.153
   
   Type:  A
   Name:  @
   Value: 185.199.111.153
   ```

3. Wait 24-48 hours for DNS propagation

## Verification Checklist

After deployment, check:

- [ ] Website loads at GitHub Pages URL
- [ ] All three service sections visible
- [ ] Icons display correctly
- [ ] "Let's Talk Business" button works
- [ ] Responsive on mobile (test with phone)
- [ ] No console errors (press F12 in browser)

## SEO Setup (After Launch)

### 1. Google Search Console
1. Go to [Google Search Console](https://search.google.com/search-console)
2. Add your property: `https://YOUR-USERNAME.github.io/v3tta-website/`
3. Verify ownership (DNS or HTML file method)
4. Submit sitemap (if you create one)

### 2. Google Analytics (Optional)
1. Go to [Google Analytics](https://analytics.google.com)
2. Create account and property
3. Get tracking ID (GA_MEASUREMENT_ID)
4. Add to `index.html` before `</head>`:

```html
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### 3. Social Media Meta Tags
Your website already includes:
- ✅ Open Graph tags (Facebook, LinkedIn)
- ✅ Twitter Card tags
- ✅ Proper meta descriptions

Test your social cards:
- [Facebook Debugger](https://developers.facebook.com/tools/debug/)
- [Twitter Card Validator](https://cards-dev.twitter.com/validator)
- [LinkedIn Post Inspector](https://www.linkedin.com/post-inspector/)

## Making Updates

After initial deployment, to update your website:

```bash
# Make changes to index.html

# Stage changes
git add index.html

# Commit changes
git commit -m "Update: describe your changes"

# Push to GitHub
git push
```

Changes will appear on your live site within 1-2 minutes.

## Troubleshooting

**Site not showing?**
- Wait 2-3 minutes after enabling GitHub Pages
- Check Settings → Pages shows green "Your site is live"
- Clear browser cache (Ctrl+Shift+R)

**Icons not showing?**
- They're embedded as base64, should work automatically
- Check browser console (F12) for errors

**Custom domain not working?**
- Verify DNS records are correct
- Wait 24-48 hours for DNS propagation
- Use [DNS Checker](https://dnschecker.org) to verify

**Need help?**
- GitHub Pages Documentation: https://docs.github.com/pages
- GitHub Community: https://github.community/

## Next Steps

1. ✅ Deploy to GitHub Pages
2. 🔍 Submit to Google Search Console
3. 📊 Set up Google Analytics (optional)
4. 🌐 Configure custom domain (if owned)
5. 📱 Test on mobile devices
6. 🔗 Share on social media
7. 📈 Monitor traffic and engagement

---

**Questions?** Create an issue in your GitHub repository or consult GitHub Pages documentation.

**Success!** 🎉 Your website is now live and helping you grow your business!
