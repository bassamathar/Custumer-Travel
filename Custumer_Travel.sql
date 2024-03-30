SELECT * FROM custumer_travel.customertravel;

SELECT COUNT(*) FROM custumer_travel.customertravel;

select * from custumer_travel.customertravel where AccountSyncedToSocialMedia = 'Yes' and BookedHotelOrNot = 'Yes';

select avg(Age) As avg_age from custumer_travel.customertravel where AccountSyncedToSocialMedia = 'Yes';
select avg(Age) As avg_age from custumer_travel.customertravel where BookedHotelOrNot = 'Yes';

SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN 'Young Adult'
        WHEN Age BETWEEN 26 AND 35 THEN 'Adult'
        WHEN Age BETWEEN 36 AND 45 THEN 'Mature'
        ELSE 'Above 45' 
    END AS Age_Group,
    COUNT(*) AS Age_Count
FROM 
    custumer_travel.customertravel
GROUP BY 
    Age_Group;
    
    select distinct AnnualIncomeClass from custumer_travel.customertravel;
    select * from  custumer_travel.customertravel where AnnualIncomeClass = 'Middle Income'
        select * from  custumer_travel.customertravel where AnnualIncomeClass = 'Low Income'
        select * from  custumer_travel.customertravel where AnnualIncomeClass = 'High Income'

SELECT COUNT(*)  FROM custumer_travel.customertravel  WHERE AnnualIncomeClass = 'High Income';
SELECT COUNT(*)  FROM custumer_travel.customertravel  WHERE AnnualIncomeClass = 'low Income';
SELECT COUNT(*)  FROM custumer_travel.customertravel  WHERE AnnualIncomeClass = 'Middle Income';


SELECT AnnualIncomeClass,
       (COUNT(CASE WHEN BookedHotelOrNot = 'Yes' THEN 'Yes' END) / COUNT(*)) * 100 AS Booking_Percentage
FROM custumer_travel.customertravel
GROUP BY AnnualIncomeClass;






'
