#!/bin/env Rscript

t <- readr::read_csv("evaluation.csv", show_col_types = FALSE)
names(t)
t$Timestamp <- NULL
t$`Any other feedback?` <- NULL
t$`Say something positive about Björn:` <- NULL
t$`Say something about Björn he can improve:` <- NULL
t$`Say something about Björn he can improve:` <- NULL
t$`Say something positive about Richèl:` <- NULL
t$`Say something about Richèl he can improve:` <- NULL
# tail(names(t))
questions <- stringr::str_remove(
  stringr::str_remove(
    names(t),
    "Give you confidence levels of the following statements below: \\["),
  "\\]"
)
#new_names <- c(
#  paste0("q0", seq(1, 9)),
#  paste0("q", seq(10, 16))
#)
new_names <- questions
names(t) <- new_names

t$i <- seq(1, nrow(t))

names(t)
t_tidy <- tidyr::pivot_longer(t, cols = starts_with("I", ignore.case = FALSE) | starts_with("(", ignore.case = FALSE))
names(t_tidy)
names(t_tidy) <- c("i", "question", "answer")
t_tidy <- t_tidy[!is.na(t_tidy$answer), ]
t_tidy

n_individuals <- length(unique(t_tidy$i))
n_ratings <- length(t_tidy$answer[!is.na(t_tidy$answer)])

mean_confidence <- mean(t_tidy$answer[!is.na(t_tidy$answer)])

ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
  ggplot2::geom_histogram() +
  ggplot2::labs(
    title = "All confidences",
    caption = paste0(
      "#individuals: ", n_individuals, ". ",
      "#ratings: ", n_ratings, ". ",
      "Mean confidence: ", round(mean_confidence, digits = 2)
    )
  )

ggplot2::ggsave(filename = "all_confidences.png", width = 4, height = 2)

ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
  ggplot2::geom_histogram() +
  ggplot2::facet_grid(rows = "question", scales = "free_y") +
  ggplot2::theme(
    strip.text.y = ggplot2::element_text(angle = 0),
    legend.position = "none"
  ) +
  ggplot2::labs(
    title = "Confidences per question"
  )

ggplot2::ggsave(filename = "confidences_per_question.png", width = 6, height = 7)

names(t_tidy)

average_confidences <- dplyr::group_by(t_tidy, question) |> dplyr::summarise(mean = mean(answer))

readr::write_csv(average_confidences, file = "average_confidences.csv")

ggplot2::ggplot(average_confidences, ggplot2::aes(y = question, x = mean)) +
  ggplot2::geom_bar(stat = "identity")

ggplot2::ggsave(filename = "average_confidences_per_question.png", width = 6, height = 7)

# Success score
t_sessions_taught <- unique(t_tidy$question)
testthat::expect_true(all(t_sessions_taught %in% t_tidy$question))
confidences_on_taught_sessions <- t_tidy |> dplyr::filter(question %in% t_sessions_taught)

# Of the 8 learning outcomes, 4 are optional. Assuming a learner
# should have been able to achieve 1 optional outcome, this
# means the adjusted max is 5/8 higher. Correcting that, however,
# results in a success score of over 100%. Hence, no adjustment.
success_score <- mean(confidences_on_taught_sessions$answer) / 5.0
readr::write_lines(x = success_score, "success_score.txt")




## Feedback

t <- readr::read_csv("evaluation.csv", show_col_types = FALSE)

readr::write_lines(t$`Say something positive about Björn:`, "bjorn_positive.txt")
readr::write_lines(t$`Say something about Björn he can improve:`, "bjorn_improve.txt")
readr::write_lines(t$`Say something positive about Richèl:`, "richel_positive.txt")
readr::write_lines(t$`Say something about Richèl he can improve:`, "richel_improve.txt")
readr::write_lines(t$`Any other feedback?`, "other_feedback.txt")
