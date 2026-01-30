#!/bin/env Rscript
#
# The goal of this script is
# to check that all Richel's sessions have videos
# to all the required HPC clusters.

#' Write the required clusters here
get_required_clusters <- function() {
  c(
    "Alvis",
    "COSMOS",
    "Dardel",
    "Kebnekaise",
    "Pelle",
    "Tetralith"
  )
}

richels_sessions <- c(
  "filezilla",
  "login_console",
  "login_desktop_remote_desktop_client",
  "login_desktop_web_browser",
  "rsync"
)
richels_sessions_pattern <- paste0(paste0("(", richels_sessions, ")"), collapse = "|")

# Must run from root folder
root_folder_name <- getwd()
if (stringr::str_detect(root_folder_name, "/scripts$")) {
  root_folder_name <- stringr::str_remove(root_folder_name, "/scripts$")
}

sessions_folder_name <- paste0(root_folder_name, "/docs/sessions")

session_filenames <- list.files(path = sessions_folder_name, pattern = "*.md", recursive = TRUE, full.names = TRUE)
testthat::expect_true(length(session_filenames) > 0)

session_filenames <- stringr::str_subset(session_filenames, richels_sessions_pattern)





#' Extract all videos as a table
extract_videos <- function(filename) {
  text <- readr::read_lines(filename)
  title_line <- stringr::str_subset(text, "^# .*")
  testthat::expect_equal(1, length(title_line))
  title <- stringr::str_match(title_line, "# (.*)")[, 2]
  video_lines <- stringr::str_subset(text, "youtu\\.be")
  cluster_and_url <- stringr::str_match(video_lines, "([A-Z][A-Za-z]+).*(https://youtu.be/.*)\\)")
  cluster_names <- cluster_and_url[, 2]

  tibble::tibble(
    filename = filename,
    session = title,
    cluster = cluster_names,
    url = cluster_and_url[, 3]
  )
}

#' For one file.
#' If there is a YouTube video in it, it should have a
#' YouTube video with all HPC clusters in it.
#' Will \link{stop} if not, with a helpful error
check_all_required_clusters_have_a_video <- function(filename) {
  t <- extract_videos(filename)
  if (nrow(t) == 0) return()
  required_clusters <- get_required_clusters()
  for (required_cluster in required_clusters) {
    if (! required_cluster %in% t$cluster) {
      warning(required_cluster, " not found in ", filename)
    }
  }

}

for (i in seq_along(session_filenames)) {
  filename <- session_filenames[i]
  check_all_required_clusters_have_a_video(filename = filename)
}
