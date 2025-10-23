```markdown
# Luisa Carable — Static Portfolio (Ready for Netlify Drop)

This package is a simple static portfolio for Luisa Carable that you can upload directly to Netlify Drop:
https://app.netlify.com/drop

Included:
- index.html
- styles.css
- script.js
- assets/avatar.svg (placeholder avatar)
- Luisa-Carable-Resume.txt (placeholder — replace with your PDF and name it Luisa-Carable-Resume.pdf)
- make_zip.sh (helper script to create deploy.zip)

How to create the deploy.zip (two options)

Option A — Quick: use the provided zip (if you ran the script)
1. Make sure the repository files are in one folder.
2. Run:
   chmod +x make_zip.sh
   ./make_zip.sh
3. The script will create deploy.zip in the current directory. Upload deploy.zip to Netlify Drop.

Option B — Manual: create zip from the folder
1. Place all files in a single folder (root of the site).
2. From the folder, run:
   zip -r deploy.zip ./*
3. Upload deploy.zip to Netlify Drop.

Netlify deployment
1. Open https://app.netlify.com/drop
2. Drag and drop deploy.zip (or the folder) into the page.
3. Netlify will unpack and deploy the site. It will give you a default URL; set up a custom domain if you want.

Notes & next steps
- Replace Luisa-Carable-Resume.txt with your real PDF, and ensure the file is named Luisa-Carable-Resume.pdf so the Download Resume button works.
- Replace placeholder project links and images with real assets.
- To use a hosted contact form, integrate Formspree, Netlify Forms, or your own backend. Currently the contact form opens the visitor's email client via mailto:.
- If you'd like, I can:
  - Prepare a GitHub repository and commit these files for you.
  - Make the contact form work with Netlify Forms.
  - Create a multi-page version with case study templates.

Contact
- LinkedIn: https://www.linkedin.com/in/luisarcarable
- Business email: luisarcarable@gmail.com
- Student email: luisarcarable@iskolarngbayan.pup.edu.ph
- Salesforce: https://www.salesforce.com/trailblazer/p2p9ljaii4x4k3eonz
```