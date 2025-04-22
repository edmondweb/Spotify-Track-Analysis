Spotify Track Analysis Project
This project performs an exploratory data analysis (EDA) on a dataset of Spotify tracks using R. The analysis focuses on understanding trends in song popularity, track duration, artist performance, and the influence of release dates. It includes data cleaning, statistical correlation, and data visualization using `ggplot2` and `tidyverse`.




---

## 📊 Dataset Description

Each row in the dataset represents a single track with the following columns:

| Column          | Description |
|----------------|-------------|
| `track_name`   | Title of the track |
| `artist`       | Performing artist(s) |
| `album`        | Album where the track was released |
| `release_date` | Date of release (format: DD-MM-YYYY) |
| `popularity`   | Spotify popularity score (0–100) |
| `spotify_url`  | Link to the track on Spotify |
| `duration_min` | Track duration in minutes |

---

## 📈 Key Analysis Performed

- **Data Cleaning**:
  - Checked for missing values and duplicates
  - Parsed and extracted release years from date strings

- **Visualizations**:
  - Top 10 most popular tracks
  - Relationship between track duration and popularity
  - Distribution of track duration
  - Average popularity by release year (bar and line graphs)
  - Distribution of track popularity
  - Top artists by average popularity (optional)

- **Statistical Analysis**:
  - Calculated correlation between track duration and popularity

---

## 🛠️ Technologies Used

- **R (base + tidyverse)**
- **ggplot2** for visualization
- **dplyr** for data manipulation
- **ggthemes** for styling

---

## ▶️ How to Run

1. Open RStudio or your preferred R environment.
2. Set the working directory:
   ```r
   setwd("path/to/Spotify Track Analysis")



source("spotify_analysis.R")


The script assumes the release_date format is DD-MM-YYYY.
