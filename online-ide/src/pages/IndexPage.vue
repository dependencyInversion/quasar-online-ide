<template>
  <div style="height: 100vh; display: flex; flex-direction: column;">
    <q-page class="" style="flex-grow: 1;">
      <q-row class="row justify-center items-stretch" style="flex-grow: 1;">
        <div class="q-pa-md col-4" style="flex-grow: 1;">
          <q-list bordered class="rounded-borders">
            <q-expansion-item
              expand-separator
              icon="lightbulb_outline"
              label="Excerise"
            >
              <q-card>
                <q-card-section>
                  Examine correlations of the new features. Now that we have our volume and datetime features, we want to check the correlations between our new features (stored in the new_features list) and the target (5d_close_future_pct) to see how strongly they are related. Recall pandas has the built-in .corr() method for DataFrames, and seaborn has a nice heatmap() function to show the correlations.
                </q-card-section>
              </q-card>
            </q-expansion-item>
            <q-expansion-item
              expand-separator
              icon="task_alt"
              label="Instructions"
            >
              <q-card>
                <q-card-section>
                    Extend our new_features variable to contain the weekdays' column names, such as weekday_1, by concatenating the weekday number with the 'weekday_' string. Use Seaborn's heatmap to plot the correlations of new_features and the target, 5d_close_future_pct.
                </q-card-section>
              </q-card>
            </q-expansion-item>
          </q-list>
        </div>
        <div class="col-8" style="flex-grow: 1;">
          <IframeEmbed url="http://localhost:8081/?folder=/home/coder" />
        </div>
      </q-row>
    </q-page>
  </div>
</template>

<script>
import { defineComponent } from 'vue'
import IframeEmbed from 'src/components/IframeEmbed.vue'

export default defineComponent({
    name: 'IndexPage',
    components: { IframeEmbed }
})
</script>

<!--
# Add the weekday labels to the new_features list
new_features.extend(['weekday_' + str(i) for i in range(1, 5)])

# Plot the correlations between the new features and the targets
sns.heatmap(lng_df[new_features + ['5d_close_future_pct']].corr(), annot=True)
plt.yticks(rotation=0)  # ensure y-axis ticklabels are horizontal
plt.xticks(rotation=90)  # ensure x-axis ticklabels are vertical
plt.tight_layout()
plt.show()
-->