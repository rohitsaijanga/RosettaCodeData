import std.stdio, std.algorithm;

void permutationSort(T)(T[] items) pure nothrow {
    while (items.nextPermutation) {}
}

void main() {
    auto data = [2, 7, 4, 3, 5, 1, 0, 9, 8, 6, -1];
    data.permutationSort;
    data.writeln;
}
