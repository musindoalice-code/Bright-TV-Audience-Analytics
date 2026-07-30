# Executive Summary — Bright TV Audience Analytics

## Headline KPIs

| KPI | Value |
|---|---|
| Total Subscribers | 5,375 |
| Total Viewing Sessions (cleaned) | 9,983 |
| Average Watch Duration per Session | 10.0 minutes (sessions with actual usage); 9.1 minutes across all logged sessions |
| Most Watched Channel (by sessions) | Live Events (1,768 sessions) |
| Most Watched Channel (by total minutes) | ICC Cricket World Cup 2011 (24,725 minutes) |
| Top Province (excl. unknown) | Gauteng — 1,704 subscribers (31.7% of subscribers with a known province) |
| Largest Age Group | Youth (20–35), 2,592 subscribers — 48.2% of all subscribers |
| Peak Viewing Hour | 15:00 (3pm) |
| Weekend vs Weekday Viewing | 30.5% weekend / 69.5% weekday |

## Key Findings

**Session count and watch-time rank channels differently.** Live Events has the most
sessions, but the ICC Cricket World Cup 2011 content drives more total minutes
watched — a single Cricket World Cup session runs much longer on average than a
Live Events session. Programming and ad-slot decisions should be based on total
watch-time, not session count alone, since that's what actually reflects audience
attention.

**Engagement is heavily skewed toward light usage.** Based on total minutes watched
per subscriber: 68.8% of subscribers are "Light" viewers, 23.4% are effectively
"Inactive" (zero recorded viewing), 7.6% are "Regular" viewers, and only 0.2% are
"Power Viewers" (300+ minutes across the quarter). This is a churn-risk signal —
nearly a quarter of the subscriber base shows no recorded engagement at all.

**The subscriber base skews heavily male.** Of subscribers with a recorded gender,
87.9% are male and 12.1% are female — a significant imbalance worth investigating
before running gender-targeted campaigns, since it may reflect who is completing
sign-up profiles rather than the true audience split.

**A meaningful share of the data is incomplete, not just "clean."** 17.1% of
subscribers have no recorded gender, 25.2% have no recorded race, and a separate
920 subscribers (17.1%) are recorded at age 0 with no plausible real age — almost
certainly incomplete sign-ups rather than genuine data points. All of these are
reported as their own "Uncategorized" / "incomplete profile" segments in the
analysis rather than silently dropped or folded into real categories, so the
KPIs above are not inflated or distorted by missing data.

## Scope and Limitations

- The viewing data covers Q1 2016 only (January–March). Findings describe this
  quarter and should not be assumed to hold year-round without further data.
- `email_flag` and `sm_flag` are constant across the dataset provided and could not
  be used for segmentation.
- Race and gender figures are reported as a share of *known* values where relevant,
  with the unrecorded share stated separately.
