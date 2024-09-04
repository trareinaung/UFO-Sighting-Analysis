# UFO Sightings Analysis

This project contains a series of SQL queries designed to analyze UFO sightings data. The analysis explores various aspects such as the distribution of sightings by country and shape, as well as time-based patterns.

## Table of Contents

1. [Introduction](#introduction)
2. [Dataset Overview](#dataset-overview)
3. [Queries](#queries)

## Introduction

The goal of this project is to extract insights from UFO sightings data by examining various metrics, including sightings frequency, shapes, durations, and temporal patterns. The SQL queries included aim to answer key questions about UFO sightings and provide valuable insights into their distribution and trends.

## Dataset Overview

The project utilizes a UFO sightings dataset with the following key columns:

- **country_code**: The code representing the country where the sighting occurred.
- **ufo_shape**: The shape of the UFO observed.
- **duration_seconds**: The duration of the sighting in seconds.
- **event_datetime**: The date and time when the sighting occurred.

## Queries

[The SQL file](https://github.com/trareinaung/UFO-Sighting-Analysis/blob/main/ufo_sighting.sql) contains the following queries:

1. **UFO Sightings by Country**
   - Analyzes the count of UFO sightings for each country, sorted by the number of sightings.

2. **UFO Sightings by Shape**
   - Examines the number of UFO sightings categorized by their shape, listing the most frequent shapes.

3. **Total Duration of UFO Sightings by Shape**
   - Calculates the total duration of UFO sightings for each shape, converted into minutes and hours.

4. **UFO Sightings Frequency by Abbreviated Month**
   - Analyzes the frequency of UFO sightings by month, showing which months have the highest number of sightings.

5. **UFO Sightings Frequency by Hour**
   - Examines the frequency of UFO sightings by hour of the day to identify peak hours.

6. **UFO Sightings Frequency by Year**
   - Provides the frequency of UFO sightings by year, highlighting the most active years.

7. **Top 5 Countries with Most UFO Sightings (Using CTE)**
   - Identifies the top 5 countries with the highest number of UFO sightings using a Common Table Expression (CTE).

8. **UFO Sightings Duration Analysis by Shape (Using Subquery)**
   - Analyzes the total duration of UFO sightings by shape using a subquery, including conversions into minutes and hours.

9. **Most Frequent UFO Sighting Shapes (Using Subquery)**
   - Identifies the top 5 most frequent UFO shapes using a subquery.

10. **Peak Hour for UFO Sightings (Using CTE)**
    - Finds the hour with the highest number of UFO sightings using a Common Table Expression (CTE).

## Author

[Thu Rein Aung](https://github.com/trareinaung)
