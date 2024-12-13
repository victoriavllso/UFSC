
import time
import subprocess

def measure_execution_time(script_name: str) -> float:
    start_time = time.time()
    subprocess.run(['python', script_name])
    return time.time() - start_time

times1 = []
times2 = []

# Compare execution times for 100 runs
for _ in range(100):
    times1.append(measure_execution_time('T1/python/backtracking.py'))
    times2.append(measure_execution_time('T1/python/mix.py'))

media1 = sum(times1) / len(times1)
media2 = sum(times2) / len(times2)

print(f"Execution time of backtracking.py, em média: {media1:.4f} seconds")
print(f"Execution time of mix.py, em média: {media1:.4f} seconds")
