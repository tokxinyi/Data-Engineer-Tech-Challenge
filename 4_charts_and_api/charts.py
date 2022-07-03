from pandas.core import frame
import streamlit as st
import requests
import pandas as pd
from datetime import date
import plotly.express as px
import base64
import altair as alt

# SETTING PAGE CONFIG TO WIDE MODE
st.set_page_config(layout="wide")

st.title("COVID-19 cases in Singapore")
st.markdown(
    """
    The following visualisation will show the number of covid-19 cases in Singapore over time.
    """
)

@st.cache
def load_data(status):
    url = "https://api.covid19api.com/country/singapore/status/" + status + "?from=2020-03-01T00:00:00Z&to=2022-07-02T00:00:00Z"

    payload={}
    headers = {
        'Authorization': 'Basic Y29yb25hOlpVYXY0dmF3ekNmTWNNWEhWOEI='
    }

    response = requests.request("GET", url, headers=headers, data=payload)
    data = response.text
    df= pd.read_json(data)
    return df

data_confirmed = load_data('confirmed')
data_deaths = load_data('deaths')
data_recovered = load_data('recovered')



frames = [data_confirmed, data_deaths, data_recovered]
data = pd.concat(frames, ignore_index=True)

# since the time is all the same value, we will just display the date alone
data['Date'] = data['Date'].dt.date

st.title("All the COVID-19 cases in Singapore")
st.markdown("COVID-19 cases in Singapore from 2020-03-01 to 2022-07-02. Confirmed cases, death cases and recovered cases are captured separately in the data frames.")


st.write("Line graph showing the number of cases in Singapore over time")
all_data = data[['Date', 'Cases', 'Status']].copy()
fig = px.line(all_data, x = 'Date', y = 'Cases', color = 'Status')
st.plotly_chart(fig, use_container_width=True)

