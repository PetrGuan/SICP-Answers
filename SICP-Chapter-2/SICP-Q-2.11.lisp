(define (mul-interval x y)
    (let ((lx (lower-bound x))
          (ly (lower-bound y))
          (ux (upper-bound x))
          (uy (upper-bound y)))
        (cond ((and (>= lx 0)
                    (>= ux 0)
                    (>= ly 0)
                    (>= uy 0)) ; [+ +] * [+ +]
                (make-interval (* lx ly) (* ux uy)))
              ((and (>= lx 0)
                    (>= ux 0)
                    (<= ly 0)
                    (>= uy 0)) ; [+ +] * [- +]
                (make-interval (* ux ly) (* ux uy)))
              ((and (>= lx 0)
                    (>= ux 0)
                    (<= ly 0)
                    (<= uy 0)) ; [+ +] * [- -]
                (make-interval (* ux ly) (* lx uy)))
              ((and (<= lx 0)
                    (>= ux 0)
                    (>= ly 0)
                    (>= uy 0)) ; [- +] * [+ +]
                (make-interval (* lx uy) (* ux uy)))
              ((and (<= lx 0)
                    (>= ux 0)
                    (<= ly 0)
                    (>= uy 0)) ; [- +] * [- +]
                (make-interval
                    (min (* lx uy) (* ux ly))
                    (max (* lx ly) (* ux uy))))
              ((and (<= lx 0)
                    (>= ux 0)
                    (<= ly 0)
                    (<= uy 0)) ; [- +] * [- -]
                (make-interval (* ux ly) (* lx ly)))
              ((and (<= lx 0)
                    (<= ux 0)
                    (>= ly 0)
                    (>= uy 0)) ; [- -] * [+ +]
                (make-interval (* lx uy) (* ux ly)))
              ((and (<= lx 0)
                    (<= ux 0)
                    (<= ly 0)
                    (>= uy 0)) ; [- -] * [- +]
                (make-interval (* lx uy) (* lx ly)))
              ((and (<= lx 0)
                    (<= ux 0)
                    (<= ly 0)
                    (<= uy 0)) ; [- -] * [- -]
                (make-interval (* ux uy) (* lx ly)))
              )))