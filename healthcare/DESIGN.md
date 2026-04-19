# Design System Document: The Clinical Sanctuary

## 1. Overview & Creative North Star
### The Creative North Star: "The Empathetic Architect"
In a hospital environment, users are often under high stress, navigating physical and emotional complexity. This design system rejects the cluttered, "dashboard-heavy" aesthetics of traditional medical portals. Instead, it adopts the persona of a calm, authoritative guide. 

We break the "standard template" look through **intentional editorial spacing** and **asymmetric layering**. By treating the interface as a series of sophisticated, stacked surfaces rather than a flat grid, we create a sense of architectural depth and calm. The goal is to move the user from a state of "searching" to a state of "finding" through high-contrast typography and a soothing, premium atmosphere.

---

## 2. Colors: Tonal Depth & The "No-Line" Rule
The palette is rooted in deep clinical blues and restorative greens, optimized for maximum accessibility (WCAG AAA compliance for core text).

### The "No-Line" Rule
**Explicit Instruction:** Do not use 1px solid borders to section content. Boundaries must be defined through background shifts or tonal transitions. 
- To separate a navigation sidebar from a main content area, use `surface-container-low` for the sidebar against a `surface` background. 
- Structural integrity is maintained through color blocks, not "boxes."

### Surface Hierarchy & Nesting
Treat the UI as a physical environment. Use the container tiers to define importance:
- **Base Layer:** `surface` (#f7f9fe)
- **Secondary Layouts:** `surface-container-low` (#f1f4f8)
- **Interactive/Floating Elements:** `surface-container-lowest` (#ffffff) for maximum "lift."
- **Emphasized Information Blocks:** `surface-container-high` (#e5e8ed).

### The "Glass & Gradient" Rule
To prevent the system from feeling "sterile," use **Glassmorphism** for navigation overlays and floating map controls. Apply `surface` with 80% opacity and a 20px backdrop-blur. 
- **Signature Texture:** Use a subtle linear gradient on primary CTAs, transitioning from `primary` (#00488d) to `primary-container` (#005fb8) at a 135-degree angle. This adds a "jewel-tone" depth that feels high-end and intentional.

---

## 3. Typography: Editorial Authority
We utilize a dual-typeface system to balance clinical precision with approachable warmth.

*   **Display & Headlines (Public Sans):** This is our "Editorial" voice. It is sturdy and authoritative. Use `display-lg` for hero welcome messages (e.g., "How can we help you today?") to create a high-end, spacious feel.
*   **Body & Labels (Inter):** Chosen for its exceptional legibility at small sizes. Inter handles the "Utility" voice—directions, department names, and medical data.

**Hierarchy Strategy:** 
- Use `headline-sm` in `on_surface_variant` (#424752) for sub-headers to maintain high contrast without the harshness of pure black. 
- Over-index on `title-lg` for navigation links to ensure high touch-targets and readability for elderly users.

---

## 4. Elevation & Depth: Tonal Layering
Traditional drop shadows are often messy. In this design system, we convey hierarchy through **Tonal Layering**.

*   **The Layering Principle:** Instead of a shadow, place a `surface-container-lowest` card on a `surface-container` background. The shift from #ffffff to #ebeef3 provides a natural, soft-edge separation.
*   **Ambient Shadows:** For floating action buttons or critical alerts, use a "Cloud Shadow": 
    - `Box-shadow: 0px 12px 32px rgba(24, 28, 31, 0.06);` (using a 6% opacity of the `on-surface` color).
*   **The "Ghost Border" Fallback:** If a border is required for accessibility (e.g., in high-contrast mode), use `outline-variant` (#c2c6d4) at 20% opacity. Never use 100% opaque lines.

---

## 5. Components: Tactile Utility

### Buttons
*   **Primary:** Uses the Primary-to-Primary-Container gradient. 0.5rem (`lg`) roundedness. No border.
*   **Secondary:** `secondary-container` background with `on-secondary-container` text. High legibility, lower visual weight.
*   **Tertiary:** Ghost style. No background; uses `primary` text color with a subtle `surface-container-high` hover state.

### Input Fields
*   **Style:** Minimalist. Use `surface-container-highest` as the background. 
*   **Focus State:** A 2px "Halo" using `surface-tint` (#005db5) with 40% opacity, rather than a hard border change.
*   **Error:** Use `error` (#ba1a1a) for text and `error_container` as a soft background wash for the field.

### Navigation Cards (Department Icons)
*   **Execution:** Forbid dividers. Use `surface-container-low` backgrounds. 
*   **Iconography:** Use thick-stroke (2pt) icons in `primary`. Pair with `title-md` for the department name.
*   **Layout:** Use generous vertical padding (2rem) to allow the content to "breathe," ensuring users don't feel overwhelmed.

### Additional Hospital-Specific Components
*   **Wayfinding Breadcrumbs:** Uses `label-md` in `on_surface_variant`. Floating design with backdrop-blur.
*   **Urgency Banner:** A high-contrast `tertiary_container` (#006c5f) bar at the top of the screen for "Emergency Room Wait Times" or "Mask Mandates."

---

## 6. Do’s and Don’ts

### Do
*   **Do** use asymmetrical layouts. For example, a large headline on the left with a "floating" search bar offset to the right.
*   **Do** prioritize "Negative Space." If a screen feels crowded, increase the padding rather than adding a divider.
*   **Do** use `secondary` (#1b6d24) for all success states and wellness-related navigation (e.g., "Physical Therapy," "Gardens").

### Don’t
*   **Don’t** use pure black (#000000). Use `on_surface` (#181c1f) to keep the experience sophisticated.
*   **Don’t** use 1px dividers to separate list items. Use 16px of vertical white space or alternating `surface` and `surface-container-low` backgrounds.
*   **Don’t** use sharp corners. Always stick to the `DEFAULT` (0.25rem) or `lg` (0.5rem) roundedness scale to maintain a "soft" and approachable feel.