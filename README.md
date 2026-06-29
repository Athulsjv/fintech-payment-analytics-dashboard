# Fintech Payment Analytics & Fraud Detection Dashboard
### PostgreSQL • Power BI • 6.3M Transactions • $12.06B Fraud Exposure

---

## The Business Problem

Digital payment platforms process millions of transactions daily.
The critical challenge is not just detecting fraud - it is
understanding *where* fraud hides, *when* it strikes, and
*why* existing detection systems fail to catch it.

This project analyses 6.36 million real payment transactions
to identify fraud concentration patterns, evaluate detection
system effectiveness, and surface actionable intelligence
for risk teams — mirroring the daily analytics workflow at
fintech companies processing high-volume digital payments.

---

## Tools and Scale

| Tool | Purpose |
|------|---------|
| PostgreSQL | Data import, cleaning, feature engineering, SQL analysis |
| Power BI | 4-page interactive dashboard |
| Dataset | Online Payments Fraud Detection — 6.36M transactions |

---

## What I Did

**1. Data Engineering**
- Imported 6.36M transaction records into PostgreSQL
- Engineered time-based features: week period (Weeks 1–4)
  and time of day (Morning, Afternoon, Evening, Night)
- Created transaction size segments:
  Small, Medium, Large, Very Large
- Built binary fraud flag for multi-dimensional analysis

**2. SQL Analysis**
- 7 business-driven queries across transaction type,
  time of day, weekly trend, transaction size,
  high-risk pattern combinations, and system effectiveness
- Evaluated existing fraud flagging system performance
  against actual fraud outcomes

**3. Power BI Dashboard**
- 4-page interactive dashboard with fraud heatmaps,
  dual-axis trend charts, KPI cards, and conditional
  formatting across all risk dimensions

---

## Key Findings

### Finding 1 — Fraud is Structurally Concentrated
Of 6.36M transactions analysed, **8,197 fraud cases** were
identified with a **0.13% fraud rate** — consistent with
industry norms. However, the absolute fraud exposure stands
at **$12.06 billion** — highlighting that even a low
percentage rate creates massive financial risk at scale.

Fraud is **exclusively concentrated** in two transaction types:

| Type | Fraud Rate | Fraud Value |
|------|-----------|-------------|
| TRANSFER | 0.77% | $6.07bn |
| CASH_OUT | 0.18% | $5.99bn |
| PAYMENT | 0.00% | $0 |
| CASH_IN | 0.00% | $0 |
| DEBIT | 0.00% | $0 |

PAYMENT, CASH_IN, and DEBIT transactions recorded
**zero fraud cases** across 5.79M transactions.

---

### Finding 2 — Night + High Value = Highest Risk
TRANSFER transactions during Night hours carry a
**17.27% fraud rate** — the single most dangerous
transaction pattern identified across all 30 high-risk
segment combinations.

| Pattern | Fraud Rate |
|---------|-----------|
| TRANSFER + Very Large + Night | 17.27% |
| TRANSFER + Medium + Night | 10.36% |
| TRANSFER + Large + Night | 7.52% |
| CASH_OUT + Large + Night | 3.85% |

Night transactions represent only **0.11M of 6.36M**
total transactions — yet carry a **1.77% fraud rate**,
23x higher than Afternoon transactions at 0.08%.

---

### Finding 3 — Transaction Size Amplifies Risk
Very Large transactions carry a **2.07% fraud rate** —
16x higher than Small transactions at 0.02%.

| Size | Fraud Rate | Fraud Value |
|------|-----------|-------------|
| Very Large | 2.07% | $10.46bn |
| Large | 0.14% | $1.52bn |
| Medium | 0.06% | $71.8M |
| Small | 0.02% | $1.2M |

Very Large transactions represent only **2.05%** of
transaction volume but account for **86.7%** of total
fraud value.

---

### Finding 4 — Fraud Detection System is Critically Ineffective
This is the most significant finding in the project.

| Metric | Value |
|--------|-------|
| Total Fraud Cases | 8,197 |
| Correctly Flagged | 16 |
| Missed by System | 8,181 |
| False Positives | 0 |
| **Detection Rate** | **0.20%** |

The existing fraud flagging system detected only **16 of
8,197 fraudulent transactions** — a **0.20% detection rate**
— leaving **$11.98 billion** in fraudulent transactions
undetected. While the system generates zero false positives
(high precision), its recall is critically low, making it
effectively non-functional as a fraud prevention tool.

Industry standard fraud detection systems achieve
detection rates of **80%+** using machine learning models.

---

## Business Recommendations

**Recommendation 1 — Targeted Real-Time Monitoring**
Deploy enhanced real-time fraud screening exclusively for
TRANSFER and CASH_OUT transactions — the only two types
where fraud occurs. This eliminates unnecessary friction
for 91.62% of transactions while concentrating detection
resources where risk actually exists.

**Recommendation 2 — Night Hours Alert System**
Implement mandatory additional verification for TRANSFER
transactions above a defined threshold during Night hours
(12AM–6AM). The 17.27% fraud rate for Very Large nighttime
TRANSFER transactions justifies friction at this specific
intersection.

**Recommendation 3 — Detection System Overhaul**
Replace or augment the current rules-based flagging system
with a machine learning model trained on the high-risk
patterns identified — specifically targeting TRANSFER and
CASH_OUT transactions during Night hours involving Very
Large amounts. A model achieving even 50% detection would
prevent approximately $6 billion in fraud losses.

---

## Dashboard Pages

| Page | What It Shows |
|------|--------------|
| 1. Executive Summary | Transaction KPIs, fraud rate by type, volume distribution |
| 2. Fraud Pattern Deep Dive | High-risk patterns, size analysis, fraud heatmap |
| 3. Transaction Volume & Trends | Weekly trends, time of day, average transaction values |
| 4. Fraud Detection System Analysis | System performance, detection rate, missed fraud exposure |

---

## Repository Structure

| Folder | Contents |
|--------|---------|
| /queries | All 7 SQL scripts used for analysis |
| /data | Exported CSV results from each query |
| /dashboard | Power BI .pbix file and PDF export |
| /screenshots | All 4 dashboard page screenshots |

---

## Why This Project

Fraud detection and payment analytics are core functions
at every digital payments company. This project demonstrates
the ability to work with large transaction datasets, identify
non-obvious risk patterns through multi-dimensional SQL
analysis, evaluate system effectiveness quantitatively,
and communicate findings with business-level recommendations
— not just data outputs.

---

## Author

**Athul Sajeev**
MBA — Business Analytics & Finance | 2026
https://www.linkedin.com/in/athul-sajeev-0020631b4/
athulsajeev.88@gmail.com
