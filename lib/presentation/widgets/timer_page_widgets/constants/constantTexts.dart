// ignore_for_file: file_names

const String timeIsUpTitle = "Time is Up!";

const String timeIsUpBody = "You worked a lot, it's time to give a break.";

const String reset = "Reset";

const String stop = "Stop";

const String start = "Start";

const String hours = "Hours";

const String minutes = "Minutes";

const String seconds = "Seconds";

const String pivaTimer = "Piva - Timer";

String workingTimeText({required int workingSeconds, required int workingMinutes}) {
  return "You are working for $workingMinutes minutes and $workingSeconds seconds...";
}
