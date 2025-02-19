-- Lists all bands with Glam rock as their main style, ranked by their longevity
SELECT 
    band_name, 
    IF(split IS NOT NULL, split - formed, 2022 - formed) AS lifespan 
FROM 
    metal_bands 
WHERE 
    style LIKE '%Glam rock%' 
ORDER BY 
    lifespan DESC;
