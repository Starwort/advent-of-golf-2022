(use '[clojure.set])
(defn toNum [l] (let [x (int l)] (if (> x 95) (- x 96) (- x 38))))
(defn halveString [s] (split-at (/ (count s) 2) s))
(defn sumString [splitter lines] 
    (apply + (map 
        #(toNum (first (vec (apply intersection (map set (splitter %)) )))) lines) ))

(print 
  (let [x (clojure.string/split-lines (slurp *in*))] 
    [(sumString halveString x) (sumString #(do %) (partition 3 x))]))