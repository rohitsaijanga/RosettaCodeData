import std.stdio, std.math, std.algorithm;

T[] factors(T)(in T n) /*pure nothrow*/ {
    if (n == 1) return [n];

    T[] res = [1, n];
    T limit = cast(T)sqrt(cast(real)n) + 1;
    for (T i = 2; i < limit; i++) {
        if (n % i == 0) {
            res ~= i;
            immutable q = n / i;
            if (q > i)
                res ~= q;
        }
    }

    return res.sort().release;
}

void main() {
    foreach (immutable i; [45, 53, 64, 1111111])
        i.factors.writeln;
}
