## Project Story

I wanted to get really good at SQL without waiting for a job or a course.  
So I did what any self-taught analyst would do in 2025:

1. Asked ChatGPT to generate a realistic ride-sharing dataset 
2. Loaded everything into local MySQL  
3. Explored the data using only SQL  


## Dataset (AI-generated, 100 % synthetic)

- `trips` table – 1000 rows  
  Columns: trip_id, request_time pickup_zone, dropoff_zone, fare, status, driver_id, user_id. 
  
Data is completely fake but statistically realistic — perfect for practising without privacy worries.

## What I Discovered 

- Drivers cancel ~1.7× more trips than riders
- Cancellation rate is almost identical (24–25 %) in every single zone 
- Average completed fare = $5.74
## Sample results
<img width="190" height="91" alt="image" src="https://github.com/user-attachments/assets/1ffd848a-a053-4ebf-8b2a-e3ead53cb489" />
<img width="399" height="87" alt="image" src="https://github.com/user-attachments/assets/19a1666c-692c-449e-9342-bb014bb28be4" />
<img width="162" height="72" alt="image" src="https://github.com/user-attachments/assets/225384b0-e1ff-4e44-8724-47cacbc87645" />
<img width="274" height="135" alt="image" src="https://github.com/user-attachments/assets/bd558ed8-c7e6-47fb-8f1d-066eee2944f8" />



