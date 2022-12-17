SELECT 
    * 
FROM {{ ref('fct_reviews') }} R
JOIN {{ ref('dim_listings_cleansed') }} L
ON R.LISTING_ID = L.LISTING_ID
WHERE L.CREATED_AT >= R.REVIEW_DATE
LIMIT 5;
