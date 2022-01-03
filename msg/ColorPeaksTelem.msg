# The input image to the color peak calculation process.
# However, these calculated color peaks are a function of a few previous images
# as well, as this calculation is a moving average, so there are other
# unaccounted for inputs not represented here.
sensor_msgs/Image image

# The number of clusters that the input color channels were split by for kmeans
uint8 kmeans_k

# The number of times the kmeans algorithm ran
uint8 kmeans_attempts

# The "best" peak for the left half of the input image. This value is purely a
# function of the input image and is before the moving window is applied.
sh_common_interfaces/Color left_instantaneous_best_peak
# The updated / moving average peak of the left half of the input video.
sh_common_interfaces/Color left_current_peak

# The "best" peak for the right half of the input image. This value is purely a
# function of the input image and is before the moving window is applied.
sh_common_interfaces/Color right_instantaneous_best_peak
# The updated / moving average peak of the right half of the input video.
sh_common_interfaces/Color right_current_peak
