struct imp
      r
end

macro res(ex)
      for args in ex.args
      if typeof(args) != LineNumberNode
            args.args[2] = :(imp($(args.args[2])))
            # println(ex)
      end

      end

      return ex |> esc
end




Base.://(r1::imp, r2::imp) = imp((r1.r * r2.r)/(r2.r + r1.r))

Base.:+(r1::imp, r2::imp) = imp(r1.r + r2.r)
Base.:+(r1::imp, r2) = imp(r1.r + r2)
Base.:+(r2, r1::imp) = imp(r1.r + r2)

Base.:-(r1::imp, r2::imp) = imp(r1.r - r2.r)
Base.:-(r1::imp, r2) = imp(r1.r - r2)
Base.:-(r2, r1::imp) = imp(r1.r - r2)

Base.:*(r1::imp, r2::imp) = imp(r1.r * r2.r)
Base.:*(r1::imp, r2) = imp(r1.r * r2)
Base.:*(r2, r1::imp) = imp(r1.r * r2)

Base.:/(r1::imp, r2::imp) = imp(r1.r/r2.r)
Base.:/(r1::imp, r2) = imp(r1.r/r2)
Base.:/(r1, r2::imp) = imp(r1/r2.r)

