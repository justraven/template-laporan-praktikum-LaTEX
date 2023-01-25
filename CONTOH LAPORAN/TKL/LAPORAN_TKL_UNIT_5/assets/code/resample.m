new_in_value_t = 0:max(in_sys.time)/1000:max(in_sys.time);
new_out_value_t = 0:max(out_sys.time)/1000:max(out_sys.time);

new_in_value = interp1(in_sys.time, in_sys.data, new_in_value_t)';
new_out_value = interp1(out_sys.time, out_sys.data, new_out_value_t)';

sampling_time = max(out_sys.time)/1000;