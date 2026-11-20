package org.libsdl.app;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;

public class GowCheatButton extends Button {

    public GowCheatButton(final Context context) {
        super(context);
        init(context);
    }

    private void init(final Context context) {
        setText("⚡ CHEAT");
        setTextColor(Color.parseColor("#FFD700")); // Spartan Gold
        setTextSize(13);
        setTypeface(null, Typeface.BOLD);
        setGravity(Gravity.CENTER);

        // Background styling
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.argb(200, 30, 15, 10)); // Dark Greek Bronze
        bg.setCornerRadius(14);
        bg.setStroke(3, Color.parseColor("#FF8800")); // Fiery Orange-Gold Border
        setBackground(bg);

        setPadding(25, 10, 25, 10);

        setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                GowCheatManager.showCheatDialog(context);
            }
        });
    }

    public static void attach(SDLActivity activity, RelativeLayout layout) {
        GowCheatButton btn = new GowCheatButton(activity);
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(
            RelativeLayout.LayoutParams.WRAP_CONTENT,
            RelativeLayout.LayoutParams.WRAP_CONTENT
        );
        // Letakkan di kanan atas di samping tombol pause agar logo tengah tidak terhalang
        lp.addRule(RelativeLayout.ALIGN_PARENT_TOP);
        lp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
        lp.topMargin = 16;
        lp.rightMargin = 175;
        layout.addView(btn, lp);
    }
}
