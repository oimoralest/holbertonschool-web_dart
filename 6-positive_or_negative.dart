void main(List<String> args) {
    var n = int.parse(args[0]);
    print(n < 0 ? "$n is negative" : n == 0 ? "$n is zero" : "$n is positive");
}
