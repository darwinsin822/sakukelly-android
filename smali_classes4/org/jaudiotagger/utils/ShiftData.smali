.class public Lorg/jaudiotagger/utils/ShiftData;
.super Ljava/lang/Object;
.source "ShiftData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shiftDataByOffsetToMakeSpace(Ljava/nio/channels/SeekableByteChannel;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 25
    invoke-interface/range {p0 .. p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    .line 26
    invoke-interface/range {p0 .. p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    .line 27
    invoke-interface/range {p0 .. p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 28
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v8

    long-to-int v8, v8

    int-to-long v9, v8

    .line 29
    div-long v11, v6, v9

    .line 30
    rem-long/2addr v6, v9

    .line 33
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 36
    invoke-interface/range {p0 .. p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v13

    sub-long/2addr v13, v9

    .line 37
    invoke-interface/range {p0 .. p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v15

    sub-long/2addr v15, v9

    move-wide/from16 v17, v13

    int-to-long v13, v1

    add-long/2addr v15, v13

    const/16 v19, 0x0

    move-wide/from16 v20, v2

    move-wide/from16 v2, v17

    move/from16 v1, v19

    move-wide/from16 v17, v4

    move-wide/from16 v22, v13

    move-wide v13, v15

    move-wide/from16 v15, v22

    :goto_0
    int-to-long v4, v1

    cmp-long v4, v4, v11

    if-gez v4, :cond_0

    .line 42
    invoke-interface {v0, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 43
    invoke-interface {v0, v8}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 46
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 47
    invoke-interface {v0, v13, v14}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 48
    invoke-interface {v0, v8}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 51
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sub-long/2addr v2, v9

    sub-long/2addr v13, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-lez v1, :cond_1

    long-to-int v1, v6

    .line 59
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-wide/from16 v2, v17

    .line 60
    invoke-interface {v0, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 61
    invoke-interface {v0, v1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 64
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    add-long v4, v2, v15

    .line 65
    invoke-interface {v0, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 66
    invoke-interface {v0, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 69
    :cond_1
    instance-of v1, v0, Ljava/nio/channels/SeekableByteChannel;

    if-eqz v1, :cond_2

    if-gez p1, :cond_2

    add-long v2, v20, v15

    .line 73
    invoke-interface {v0, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->truncate(J)Ljava/nio/channels/SeekableByteChannel;

    :cond_2
    return-void
.end method

.method public static shiftDataByOffsetToShrinkSpace(Ljava/nio/channels/SeekableByteChannel;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    .line 87
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 88
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v5, v4

    .line 89
    div-long v7, v2, v5

    .line 90
    rem-long/2addr v2, v5

    .line 93
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    int-to-long v9, p1

    sub-long v9, v0, v9

    const/4 p1, 0x0

    :goto_0
    int-to-long v11, p1

    cmp-long v11, v11, v7

    if-gez v11, :cond_0

    .line 102
    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 103
    invoke-interface {p0, v4}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 106
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 107
    invoke-interface {p0, v9, v10}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 108
    invoke-interface {p0, v4}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 111
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-long/2addr v0, v5

    add-long/2addr v9, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    long-to-int p1, v2

    .line 119
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 120
    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 121
    invoke-interface {p0, p1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 125
    invoke-interface {p0, v9, v10}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 126
    invoke-interface {p0, p1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 129
    :cond_1
    instance-of p1, p0, Ljava/nio/channels/SeekableByteChannel;

    if-eqz p1, :cond_2

    .line 131
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->truncate(J)Ljava/nio/channels/SeekableByteChannel;

    :cond_2
    return-void
.end method
