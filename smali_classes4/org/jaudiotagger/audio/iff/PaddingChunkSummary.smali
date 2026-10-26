.class public Lorg/jaudiotagger/audio/iff/PaddingChunkSummary;
.super Lorg/jaudiotagger/audio/iff/ChunkSummary;
.source "PaddingChunkSummary.java"


# direct methods
.method public constructor <init>(JJ)V
    .locals 6

    .line 7
    const-string v1, "    "

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method
