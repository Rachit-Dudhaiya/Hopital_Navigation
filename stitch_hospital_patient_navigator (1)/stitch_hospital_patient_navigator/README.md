# Clinical Sanctuary — Demo Site

This folder contains a small static demo site assembled from the provided pages.

- Open `index.html` in your browser to view the site shell and navigate to the included pages.
- Included pages (already present):
  - `home_hospital_navigation/code.html`
  - `find_your_booking/code.html`
  - `hospital_map_directory/code.html`
  - `department_details/code.html`

Quick local serve commands (from the `stitch_hospital_patient_navigator` folder):

For Python 3:
```bash
python -m http.server 8000
```
Then open `http://localhost:8000` in your browser.

For Node (serve):
```bash
npx serve .
```

Notes:
- The pages use Tailwind CDN and Google Fonts; internet access is required to fully render them.
- I added a simple `index.html` and `assets/css/styles.css` to act as a site shell.
