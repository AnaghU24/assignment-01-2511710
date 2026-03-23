## ETL Decisions

### Decision 1 — Date Format Standardization
Problem: The dataset had inconsistent date formats like DD-MM-YYYY and MM/DD/YYYY.
Resolution: All dates were converted into a standard YYYY-MM-DD format for consistency.

### Decision 2 — Handling NULL Values
Problem: Some fields had missing values.
Resolution: Missing values were either removed or replaced with default values to maintain data integrity.

### Decision 3 — Category Standardization
Problem: Product categories had inconsistent casing like "electronics", "Electronics", "ELECTRONICS".
Resolution: All categories were converted to a consistent format (capitalized) to ensure accurate grouping.
